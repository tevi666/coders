import 'dart:io';
import 'dart:math';

void main() {
  print('data'); // string
  print(42); // int
  var nums = [1, 2, 3, 6, 7, 8, 5];
  nums.add(7); // add one int
  nums.addAll([5, 6, 7, 4, 3]); // add [integer]
  nums.remove(3); // rm number
  nums.removeAt(0); // rmindex int
  nums.removeWhere((el) => el >= 5);
  print(nums);
  print([1, 2, 3]); // list
  print(1 == 1); // true
  print(1 == 2); // false

  var setInteger = {1, 2, 3, 3, 4, 5, 6, 6}; // set unical integer
  print(setInteger);

  print('mcdonald\'s\ngreat');
  double nmb = 5;
  String hi = 'hello';
  bool isHappy = true;
  print(nmb);
  print('$hi. i am $isHappy! ${nmb ~/ 5}'); // toInt()
  dynamic dynamicData = 5;
  dynamicData = 'i\'m fine';
  print(dynamicData);
}
