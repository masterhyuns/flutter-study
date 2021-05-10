import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  // 1. 상태를 생성하는 함수, 반드시 생성 함수를 호출 해야 한다.
  @override
  State<StatefulWidget> createState() {
    print('1. createState');
    return new _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  String state = "before init";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("2. mounted {} =>  ${mounted}");
    print("3. initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("4. didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    if(mounted){
      setState(() {
        state = "init";
      });
    }
    print("5. build");
    return MaterialApp(
      title: 'Life Cycle', // 앱이름
      theme: ThemeData(
          // 앱의 테마 색
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        body: Center(
          child: Text("$state"),
        )
      )
    );
  }

  /// 1. createState() : 상태를 생성하는 함수, 반드시 생성 함수를 호출 해야 한다.

  /// 2. 위젯이 로딩 된후 mounted 가 true 로 바뀐다.

  ///  3. initState() : 위젯을 초기화 하는 함수
  ///  - 한번만 호출 됨
  ///  - 초기 데이터 및 필요한 데이터 로딩

  /// 4. didChangeDependencies() : 의존성이 변경되는 호출 하는 함수
  ///  데이터에 의존하는 위젯이라면 화면에 표시하기 전에 꼭 호출 해야 함

  /// 5. build() : 위젯을 화면에 렌더링 함

  /// 6. didUpdateWidget() : 위젯을 갱신할때 호출 되는 함수
  /// initState 에서도 동일하게 구현 가능 하지만 initState 는 한번만 호출 되므로 초기화 용으로 사용한다.

  /// 7. setState((){ change state })
  /// 데이터가 변경됨을 감지해 변경된 데이터를 화면에 바인딩 해준다.


  /// 8. deactivate() : 위젯의 상태 관리를 중지
  /// 메모리까지 지워지지는 않음
  /// dispose 가 호출 되기 전까지는 State 객체를 사용할 수 있다.

  /// 9. dispose() : State 객체를 영구적으로 소멸함
  /// * deactivate 후 State 를 재사용할 경우 dispose 함수가 호출되지 않을 수 있다.

  /// 10. mounted : 객체가 소멸하면 mounted 속성이 false 가 되면서 생명주기가 끝이 난다.
}
