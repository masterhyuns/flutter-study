import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaterialFlutterApp();
  }

}

class _MaterialFlutterApp extends State<MaterialFlutterApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상단 타이틀 bar
      appBar: AppBar(title:Text("Material Design App")),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      onPressed: (){

      }),
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.android),
                Text('android')
              ],
            )
        )
        ,
      ),
    );
  }
}

