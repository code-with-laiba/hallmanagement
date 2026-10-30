import 'package:flutter/material.dart';
void main (){
  runApp(MYApp());
}
class MYApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("counter",
          style: TextStyle(
          color: Colors.white,
          ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you have pusshed this button many time"),
              Text("$counter"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            counter ++;
          });},
        
        child: Icon(Icons.add,
        
        color: Colors.pink,),
        ),
        
      ),
    );
  }
}