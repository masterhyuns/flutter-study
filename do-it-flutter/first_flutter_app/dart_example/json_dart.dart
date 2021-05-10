import 'dart:convert';

void main(){
  var jsonString = '''
    [
      {"score":80},
      {"score":90}
    ]
  ''';

  var scores = jsonDecode(jsonString);
  print(scores is List); // List 인지 확인
  var firstScore = scores[0];
  print ( firstScore is Map); // Map 확인
  print(firstScore['score']);
}