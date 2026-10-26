 import 'package:flutter/material.dart';
 void main(){
  runApp(MYApp());
 }
 class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("welcome"),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white, Colors.pink,
            ])
          ),
          child: Column(
          children: [
            Text("ayatnoor",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black,
            ),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("login")
            )
          ],
          
        )
        

        )
        
        ),
      );
    
  }
}