void main() async {
  dynamic value = await checkVersion();
  print(value);
  print('end process');
}

Future<int> checkVersion() async {
  var version = lookUpVersion();
  Future.delayed(Duration(seconds: 1), () {
      print("Duration");
  });
  return version;
}

lookUpVersion() {
  return 12;
}