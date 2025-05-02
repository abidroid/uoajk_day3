import 'package:flutter/material.dart';

class DynamicListviewScreen extends StatelessWidget {
  const DynamicListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Hard Coded
    List<String> friends = [
      'Ali',
      'Bilal',
      'Hina',
      'Gia',
      'Zia',
      'Batoor',
      'Sardar Khan',
      'Ali',
      'Bilal',
      'Hina',
      'Gia',
      'Zia',
      'Batoor',
      'Sardar Khan',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic List View'),
        backgroundColor: Colors.deepOrange,
      ),

      body: ListView.builder(
          itemCount: friends.length,
          itemBuilder: (BuildContext context, int index){

            String friend = friends[index];

            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$friend ${index+1}', style: TextStyle(fontSize: 30),),
              ),
            );
          }),
    );
  }
}
