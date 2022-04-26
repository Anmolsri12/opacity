import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
         late bool _onPressed ;


@override
  void initState() {
    _onPressed=true;
  }

void click(){
  setState(() {
    _onPressed=!_onPressed;
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("create opacity"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
            Opacity(opacity:_onPressed? 0.5:0.8,child: Text("click") ),
             ElevatedButton(onPressed: click, child: Text("click"))
            ],
            
            
            )),
      ),
    );
  }
}