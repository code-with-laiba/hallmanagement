 import 'package:flutter/material.dart';
 void main (){
  runApp(MYApp());
 }
 class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("loginpage"), backgroundColor: Colors.cyan,),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "EMAIL",
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}