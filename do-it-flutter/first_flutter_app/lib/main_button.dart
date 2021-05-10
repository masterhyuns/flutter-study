import 'package:flutter/material.dart';

void main() {
  // 앱을 시작한다는 내장 함수 파라미터로는 위젯을 넣어준다.
  runApp(MyApp());
  // runApp 를 사용해 클래스를 실행할 때는 MaterialApp 를 반환해야 한다.
  // MaterialApp -> 빈 도화지
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  String test = 'hello';
  Color _color = Colors.red;
  // This widget is the root of your application.
  // 위젯에 대한 정의
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', // 앱이름
        theme: ThemeData(
            // 앱의 테마 색
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: _color
              ),
              child: Text('$test'),
              onPressed: () {
                if(test == 'hello'){
                  setState((){
                    test = 'flutter';
                    _color = Colors.orange;
                  });
                }else{
                  setState((){
                    test = 'hello';
                    _color = Colors.red;
                  });
                }

              },
            ),
        ))
    );
  }
}
