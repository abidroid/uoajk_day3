

import 'package:flutter/material.dart';

class ListviewDemoScreen extends StatelessWidget {
  const ListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [

          Card(
            color: Colors.amber[100],
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Babar Azam'),
              subtitle: Text('Batsman'),
              trailing: Text('Pak'),
              onTap: (){

              },
            ),
          ),


          Card(
            color: Colors.green[100],
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Fakhar Zaman'),
              subtitle: Text('Batsman'),
              trailing: Text('Pak'),
              onTap: (){

              },
            ),
          ),

          Container(height: 200, color: Colors.pink,),
          Container(height: 200, color: Colors.red,),
          Container(height: 200, color: Colors.green,),
          Container(height: 200, color: Colors.blue,),
          Container(height: 200, color: Colors.pink,),
          Icon(Icons.shopping_cart, size: 200,),

        ],
      ),
    );
  }
}
