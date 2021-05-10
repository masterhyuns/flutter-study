import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = "TabBar Example";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      if(!tabController.indexIsChanging){
        print("이전 index, ${tabController.previousIndex}");
        print("현재 index, ${tabController.index}");
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('TabBar Example'),
      ),
      body: TabBarView(
        children: <Widget>[FirstApp(), SecondApp()],
        controller: tabController,
      ),
      bottomNavigationBar: TabBar(tabs: <Tab>[
        Tab(icon:Icon(Icons.looks_one, color: Colors.blue)),
        Tab(icon:Icon(Icons.looks_two, color: Colors.blue)),
      ], controller: tabController,),
    );
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
    tabController.dispose();
  }
}

