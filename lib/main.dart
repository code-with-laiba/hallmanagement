import 'package:flutter/material.dart';
import 'package:hallmanagement/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(MYApp());
}

class MYApp extends StatelessWidget {
  bool showPassword = true;

  final passwordController = TextEditingController();

  List<String> students = ["ali", "urwa", "hafiz"];

  MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
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
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print(index);
                          Get.to(ChatHistory(name: students[index], n: index));
                        },
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text(students[index]),
                        subtitle: Text("king"),
                        trailing: Column(
                          children: [
                            Text("10:11pm"), 
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1, thickness: 0.5, color: Colors.grey),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: (Icon(Icons.chat)),
        ),
      ),
    );
  }
}
