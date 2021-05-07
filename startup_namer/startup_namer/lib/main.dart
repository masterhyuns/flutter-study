import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center( 
          child: RandomWords(),
        ),
      ),
    );

  }
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[]; // private 설정
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i) {
          if(i.isOdd)return Divider();

          final index = i ~/ 2;
          print('index {} => $index');
          if(index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });

  }
  Widget _buildRow(WordPair pair){
    return ListTile(
      title : Text(pair.asPascalCase, style: _biggerFont)
    );
  }
  
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}