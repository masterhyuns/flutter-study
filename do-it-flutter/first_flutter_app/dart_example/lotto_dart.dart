import 'dart:collection';
import 'dart:math' as math;

main(){
  var rand = math.Random();
  HashSet<int> lotteryNumber = HashSet();

  while(lotteryNumber.length < 6){
    lotteryNumber.add(rand.nextInt(45));
  }
  print(lotteryNumber);
}