
import 'package:flutter/material.dart';

class UserInputScreen extends StatefulWidget {
  const UserInputScreen({super.key});

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Input Demo'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            children: [

              TextField(
                keyboardType: TextInputType.emailAddress ,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.currency_yen_sharp),

                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                obscureText: true,
                obscuringCharacter: '#',
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),

                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                maxLength: 11,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  prefixIcon: Icon(Icons.mobile_friendly),

                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
