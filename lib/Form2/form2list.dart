// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:orca/Data/Constant.dart';
// ignore: duplicate_import
import '../Data/Constant.dart';
import 'GetForm2ApiModel.dart';


class Form2list extends StatefulWidget {
  const Form2list({super.key});

  @override
  State<Form2list> createState() => _Form2listState();
}

class _Form2listState extends State<Form2list> {
var getid;
late bool _isloading=true;
List <GetForm2ApiModel>? apilist;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    getApiData();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("PV Vent Form List"),
        ),
        body: Column(
          children: [
          
            if(_isloading)
             Center(child: CircularProgressIndicator()), 
            if(apilist != null)
           
            getlist(),
          ],
        ),
      ),
      
    );
  }
  Widget getlist(){

    return Expanded(
      child: ListView.builder(
        itemCount: apilist!.length,
        itemBuilder:(BuildContext context, index) {
           final getinfo=apilist![index].id;
           getid=getinfo;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Card(
            elevation: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(2, 5, 0, 2),
              child: ListTile(
             
                title: Text("${apilist![index].regNo}"),
               
                trailing: PopupMenuButton(
              itemBuilder: (context) {
                
                return [
                                   PopupMenuItem(
                    value: '1',
                    child: Text('View'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text('Delete'),
                  )
                ];
              },
              onSelected: (String value){
                
                  print('You Click on po up menu item ${value} and id ${getinfo}');

                if(value =='3')
                {
                  _showAlertDialog();
                }

              },
            ), 
                
              ),
            ),
           ),
          ],
        );
      }),
    );
  }
Future<void> getApiData() async
{
  var result= await http.get(Uri.parse(form2list));
  apilist=jsonDecode(result.body).map((item)=>GetForm2ApiModel.fromJson(item))
  .toList()
  .cast<GetForm2ApiModel>();

setState(() {
  _isloading=false;
});

}
Future<void> DelForm2Record() async {
  final response = await http.get(
    Uri.parse(form1DelRecord + "?Id=${getid}"),
    headers: {
      'Content-Type': 'application/json',
    },
  );
  if (response.statusCode == 200) {
    Fluttertoast.showToast(
      msg: "Delete Success",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
    );

    // After a successful deletion, fetch data again and rebuild the widget.
    await getApiData();
    setState(() {});
  }
else{
  print("${response.body}");
  Fluttertoast.showToast(
    msg: "${response.body}",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
  );
}
}

Future<void> _showAlertDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog( // <-- SEE HERE
        title: const Text('Delete Record'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Are you sure you want to Delete the Record?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {

              //DelForm2Record();

              Navigator.of(context).pop();
              
            },
          ),
        ],
      );
    },
  );
}
// --- Button Widget --- //









}