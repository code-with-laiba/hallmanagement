import 'package:flutter/material.dart';
void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget {
  List<Map<String ,dynamic>> students=[
   {"Name":"Ali",  "Message":"I AM WAITING",    "AGE":"18",   "TIME":"10'00"},
   {"Name":"HAFIZ","Message":"WHERE ARE YOU",   "AGE":"22",   "TIME":"7'00"},
  {"Name":"ADIL",  "Message":"I AM BORED",        "AGE":"21",   "TIME":"8'00"},
  {"Name":"UMER",  "Message":"WHY ARE YOU LATE",       "AGE":"19",   "TIME":"9'00"},
  ];
   MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("NOTFICATION", ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount:students.length,
                  itemBuilder: (context,index){
                  return Column(
                    children: [
                      ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(students[index]["Name"][0].toUpperCase())
                      ),
                      title: Text(students[index]["Name"]),
                      subtitle: Text(students[index]["Message"]),
                      trailing: Column(
                        children: [
                          Text(students[index]["TIME"].toString())
                        ],
                      ),
                                    
                     ),
                     Divider(
                         height: 1,
                         thickness: 2,
                       ),               
                    ],
                  ); } 
                   
                ),
              ),
            ],
          ),
        )
        ),
      );
  }
}