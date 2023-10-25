// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:crypto/crypto.dart';
import '../Dashboard.dart';
import '../Data/Constant.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final   TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  var HassPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Center(
                child: Container(
                    height: 450,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/login2.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid i.e. abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter password'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () async{
                String email = emailController.text;
                String password = passwordController.text;
                if(email=="" || password==""){

                    Fluttertoast.showToast(
        msg: "Email or Password is Required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
                }
                else 
                {
                   HassPass = calculateSHA256(passwordController.text);
                
                  postLogin();
                  
                }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> postLogin() async {
// Replace with your API endpoint URL
  final Map<String, dynamic> data = {
    'Email': emailController.text,
    'Password': HassPass,
    // Add more key-value pairs as needed
  };

  final response = await http.post(

    Uri.parse(loginurl),
    headers: {
      'Content-Type': 'application/json', 
    },
    body: jsonEncode(data),
  );

  if (response.statusCode == 200) {
    // Parse the JSON response
    final jsonResponse = json.decode(response.body);
    final email = jsonResponse['Email'];
    final name = jsonResponse['Name'];
    final role = jsonResponse['Role'];

    // Save user data to SharedPreferences


 if (role != "Supper")
  {
        Fluttertoast.showToast(
        msg: "You Are Not Supper Admin !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,

    );
  }
  else
  {
        SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isLoggedIn', true);
    preferences.setString('email', email);
    preferences.setString('name', name);
    preferences.setString('role', role);
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => MyHomePage(),
  ),
);
  }

    print('Response data: ${response.body}');
  } else {
    // Request failed, handle the error
    print('Error: ${response.statusCode}');
    print(loginurl);
  }
  }
  
String calculateSHA256(String input) {
 return sha256.convert(utf8.encode(input)).toString();
}




}