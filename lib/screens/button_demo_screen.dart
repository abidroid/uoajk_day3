
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        backgroundColor: Colors.deepOrange,
      ),

      body: Column(
        children: [
          ElevatedButton(

            style: ElevatedButton.styleFrom(
              elevation: 10,
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shadowColor: Colors.green[200],

            ),

            onPressed: () {  },
            child: Text('LOGIN')),
          
          TextButton(onPressed: (){}, child: const Text('Not Register Yet? SIGN UP')),

          OutlinedButton(onPressed: (){}, child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              const Text("RATE US"),
            ],
          )),

          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),

          GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: 'Button clicked',
                fontSize: 30,
                  textColor: Colors.green,
                );
              },
              child: Text('Shop Now')),
        ],
      ),
    );
  }
}
