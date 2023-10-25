import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Form1/form1List.dart';
import 'Form2/form2list.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//
  String getGreeting() {
    final currentTime = DateTime.now();
    final hour = currentTime.hour;
print(currentTime);
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
   
//
  @override
  Widget build(BuildContext context) {
    final greeting = getGreeting();
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Supper Admin!', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white
                  )),
                  subtitle: Text("${greeting}", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54
                  )),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200)
                )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  
                  itemDashboard('PV Vent Form', CupertinoIcons.person, Colors.deepOrange,1),
                  itemDashboard('ETR Form', CupertinoIcons.person_2, Colors.green,2),
                  itemDashboard('GAUGE CERTIFICATE', CupertinoIcons.person_3, Colors.purple,3),
                  itemDashboard('PRV CERTIFICATE', CupertinoIcons.person_2_fill, Colors.brown,4),
                  itemDashboard('Level Gauge', CupertinoIcons.chart_bar, Colors.indigo,5),
                  itemDashboard('Temprature Gauge', CupertinoIcons.person_3_fill, Colors.teal,6),

                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,int index ) => GestureDetector(
    onTap: () {
            print("Clicked on item at index $index");
             int no=index;
              print("Clicked on no at index $no");
           setState(() {
             
           });
      if (no == 1)
      {
            Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Form1list ()),
        );
      }
      else if(no == 2){
                      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Form2list ()),
        );
      }

          },
    child: Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle,
            ),
            child: Icon(iconData, color: Colors.white)
          ),
          const SizedBox(height: 8),
          Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleMedium)
        ],
      ),
    ),
  );
}