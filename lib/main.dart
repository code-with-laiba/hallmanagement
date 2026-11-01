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
           backgroundColor: Colors.amberAccent,
           title: Text("login page",
           style: TextStyle(
            fontWeight: FontWeight.bold
           ),
          ),
        ), 
        body: Container( 
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.black,Colors.blueGrey,Colors.white])
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:  Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "email",
                    prefixIcon: Icon(Icons.email)),
                  
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:  Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "password",
                    prefixIcon: Icon(Icons.password)
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.yellow,Colors.deepOrangeAccent])
                  ),
                
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
                    onPressed: (){}, child: Text("login"),
                  )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}