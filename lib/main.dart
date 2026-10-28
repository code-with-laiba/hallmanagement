

import 'package:flutter/material.dart';
void main(){
  runApp(MYApp());
}
class MYApp extends StatefulWidget {
  const new({super.key});
  

  @override
  State<MYApp> createState() => _MYAppState();
}
    


class _MYAppState extends State<MYApp> {
  bool showPassword = true;
  final passwordController =TextEditingController();
    List<String> students=[
    "ali", "zain" ,"hafiz",
        ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
          title: Text("whatsapp"),
         backgroundColor: Colors.greenAccent,
           ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
               
                decoration: InputDecoration(
                  hintText: "search here",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0)
                  )
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount:students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(students[index]),
                        subtitle: Text("king"),
                        trailing: Column(
                          children: [
                            Text("10:11pm"),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,
                              child:Text("1",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:12,),),
                              ),
                          ],
                        ),
                        
                      ),
                     Divider(
                          height: 1,
                          thickness: 0.5,
                          color: Colors.grey,
                  ) 
                    ],
                  );
                },
                ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child:(Icon(Icons.chat)),),
      ),
    );
  }
}