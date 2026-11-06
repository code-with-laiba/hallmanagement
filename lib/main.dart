import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart'; 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MYApp());
}
class MYApp extends StatefulWidget {
  const MYApp({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  int counter=0;
  final box=GetStorage();
  @override
  void initState(){
    super.initState();
    counter=box.read("counter") ?? 0;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("counter"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("counter:$counter"),
              ElevatedButton(onPressed: (){
                setState(() {
                  counter --;
                  box.write("counter", 0);
                });
                box.remove("counter");
              }, child: Icon(Icons.remove))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          setState(() {
            box.write("counter", counter);
            counter ++;
          });
        },
        child: Icon(Icons.plus_one),),
      ),
    );
  }
}