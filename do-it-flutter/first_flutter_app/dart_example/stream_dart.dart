

Future<int> sumStream(Stream<int> stream) async{
  var sum = 0;
  await for (var value in stream){
    print('sumStream : $value');
    sum += value;
  }
  return sum;
}


Stream<int> countStream(int to) async* {
  for(int i = 1; i <= to ; i++){
    print('countStream : $i');
    yield i;
  }
}

main() async{
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);

  // stream 은 한번 사용하면 데이터가 사라진다.
  var stream2 = Stream.fromIterable([1,2,3,4,5]);
  //stream2.first.then((value) => print('first : $value'));
  stream2.last.then((value) => print('last : $value'));
}