import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ImageWidgetApp();
  }

}
// 이미지를 사용하기 위해서는 pubspec.yml 에 추가 해주어야 한다.
class _ImageWidgetApp extends State<ImageWidgetApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget')),
      body : Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/flutter_logo.png', width: 200, height: 200, fit: BoxFit.fill),
              Text('Hello Flutter', style:TextStyle(fontFamily: 'Pacifico', fontSize: 30, color: Colors.blue))
            ],
          ),
        ),
      )
    );
  }

}