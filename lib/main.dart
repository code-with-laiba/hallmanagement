import 'package:flutter/material.dart';
void main(){
  runApp(MYApp());
}
class MYApp extends StatefulWidget {
  const MYApp({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("counter"),),
        body: Center(
          child: Column(
            children: [
              Text("counter:$counter"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            counter ++;
          });
        },
        child: Icon(Icons.plus_one),),
      ),
    );
  }
}