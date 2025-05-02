

import 'package:flutter/material.dart';

class StatefulDemoScreen extends StatefulWidget {
  const StatefulDemoScreen({super.key});

  @override
  State<StatefulDemoScreen> createState() => _StatefulDemoScreenState();
}

class _StatefulDemoScreenState extends State<StatefulDemoScreen> {

  // initial state
  String message = "Chacha";
  Color bgColor = Colors.brown;
  bool switchStatus = false;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build executed');
    return Scaffold(
      backgroundColor: bgColor,
        appBar: AppBar(
          title: const Text('Stateful Demo'),
          backgroundColor: Colors.deepOrange,
        ),

      body: Column(children: [
        Text(message),
        ElevatedButton(onPressed: (){

          message = "AJK";

          setState(() {

          });

        }, child: const Text('Change')),

        ElevatedButton(onPressed: (){
          bgColor = Colors.red;
          setState(() {

          });
        }, child: const Text("Red")),
        ElevatedButton(onPressed: (){
          bgColor = Colors.green;
          setState(() {

          });
        }, child: const Text("Green")),
        ElevatedButton(onPressed: (){

          setState(() {
            bgColor = Colors.blue;
          });
        }, child: const Text("Blue")),

        Switch(value: switchStatus, onChanged: (isChecked){
          switchStatus = isChecked;
          setState(() {

          });
        }),
      ],),
    );
  }
}
