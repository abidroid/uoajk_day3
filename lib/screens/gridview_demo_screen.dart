
import 'package:flutter/material.dart';

class GridviewDemoScreen extends StatelessWidget {
  const GridviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView(

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

            maxCrossAxisExtent: 250,
            mainAxisSpacing: 10,
          crossAxisSpacing: 10,

        ),

          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount:3,
          //   mainAxisSpacing: 5,
          //   crossAxisSpacing: 5,
          //   mainAxisExtent: 200,
          //
          // ),

        children: [

          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.purple),
          Container(color: Colors.deepOrange),
          Container(color: Colors.cyan),
          Container(color: Colors.indigo),
          Container(color: Colors.brown),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.purple),
          Container(color: Colors.deepOrange),
          Container(color: Colors.cyan),
          Container(color: Colors.indigo),
          Container(color: Colors.brown),
        ],

      ),
    );
  }
}
