import 'dart:io';

void main() {
  var nums = [1, 6, 3, 4, 2, 6, 8, 9];
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }
  for (var el in nums) {
    el++;
    print(el);
  }
  nums.forEach((element) {
    element++;
    print(element);
  });
  final obj = [
    1,
    2,
    3,
    4,
    5,
    6,
    'Baku',
    'Azerbaijan',
    'Ukraine',
    'Kyiv',
    'Turkie',
    2.0,
    42.0,
    88.0,
    true,
    false
  ];
  List<int> integers = [];
  List<String> strings = [];
  for (var element in obj) {
    bool isInt = element is int;
    bool isString = element is String;
    if (isString) {
      strings.add(element);
    }
  }

  List<String> info = [];
  List<String> flutterArr = [];
  List<String> dartArr = [];

  for (int i = 0; i < 5; i++) {
    print('Please write your name');
    String createName = stdin.readLineSync()!;
    print('Please write your want course?');
    String createCourses = stdin.readLineSync()!;
    String studAndLess = '$createName $createCourses';
    info.add(studAndLess);
  }

  for (String el in info) {
    if (el.contains('Flutter')) {
      flutterArr.add(el);
    } else if (el.contains('Dart')) {
      dartArr.add(el);
    }
  }
  print(flutterArr.join(', '));
  print(dartArr.join(', '));
}
