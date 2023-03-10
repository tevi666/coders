import 'dart:io';
import 'dart:math';

void main() {
  // var nums = [1, 6, 3, 4, 2, 6, 8, 9];
  // for (var i = 0; i < nums.length; i++) {
  //   print(nums[i]);
  // }
  // for (var info[i] in nums) {
  //   info[i]++;
  //   print(info[i]);
  // }
  // nums.forEach((element) {
  //   element++;
  //   print(element);
  // });
  final List obj = [
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
  List<double> doubles = [];
  List<bool> boolean = [];
  for (var type in obj) {
    if (type is int) {
      integers.add(type);
    } else if (type is String) {
      strings.add(type);
    } else if (type is double) {
      doubles.add(type);
    } else {
      boolean.add(type);
    }
  }
  print(integers.join(','));
  print(strings.join(','));
  print(doubles.join(','));
  print(boolean.join(','));

  // List<String> info = [];
  // List<String> flutterArr = [];
  // List<String> dartArr = [];

  // for (int i = 0; i < 5; i++) {
  //   print('Please write your name');
  //   String createName = stdin.readLineSync()!;
  //   print('Please write your want course?');
  //   String createCourses = stdin.readLineSync()!;
  //   String studAndLess = '$createName $createCourses';
  //   info.add(studAndLess);
  //   if (info[i].contains('Flutter')) {
  //     flutterArr.add(info[i]);
  //   } else if (info[i].contains('Dart')) {
  //     dartArr.add(info[i]);
  //   }
  // }
  // print(flutterArr.join(', '));
  // print(dartArr.join(', '));

  // Random random = new Random();
  // int randomNumber = random.nextInt(10) + 3;
  // var check = [];
  // var odd = [];
  // var even = [];
  // for (int i = 0; i < randomNumber; i++) {
  //   print('Please write your random num');
  //   dynamic randomNum = stdin.readLineSync()!;
  //   dynamic win = '$randomNum';
  //   check.add(win);
  // }
  // if (check.length % 2 == 0) {
  //   even.add(check);
  // } else if (check.length % 2 == 1) {
  //   odd.add(check);
  // }
  // if (odd.length > even.length) {
  //     print('odd victory: $odd');
  //   } else {
  //     print('even victory: $even');
  //   }

  // Random random = new Random();
  // int randomNumber = random.nextInt(10) + 1;
  // List<int> credit = [];
  // List<int> smallAmount = [];
  // List<int> bigAmount = [];
  // List<int> averageAmount = [];
  // int smallPrice = 2000;
  // int averagePrice = 5000;
  // int bigPrice = 10000;
  // int sum = 0;
  // for (int i = 0; i < randomNumber; i++) {
  //   print('Nə qədər borc almaq istəyirsiniz?');
  //   String amount = stdin.readLineSync()!;
  //   var parseAmount = int.parse(amount);
  //   credit.add(parseAmount);
  // }
  // for (int i = 0; i < credit.length; i++) {
  //   sum += credit[i];
  // }
  // if (sum < smallPrice) {
  //   smallAmount.add(sum);
  //   var joinSm = smallAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $smallPrice₼-dan azdı, məbləgin toplam rəqəmi $joinSm₼');
  // } else if (sum > smallPrice && sum < averagePrice) {
  //   smallAmount.add(sum);
  //   var joinSm = smallAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $smallPrice₼-dan coxdu, məbləgin toplam rəqəmi $joinSm₼');
  // } else if (sum < averagePrice) {
  //   averageAmount.add(sum);
  //   var joinMd = averageAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $averagePrice₼-dan azdı, məbləgin toplam rəqəmi $joinMd₼');
  // } else if (sum > averagePrice && sum < bigPrice) {
  //   averageAmount.add(sum);
  //   var joinMd = averageAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $averagePrice₼-dan coxdu, məbləgin toplam rəqəmi $joinMd₼');
  // } else if (sum < bigPrice) {
  //   bigAmount.add(sum);
  //   var joinXl = bigAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $bigPrice₼-dan azdı, məbləgin toplam rəqəmi $joinXl₼');
  // } else if (sum > bigPrice) {
  //   bigAmount.add(sum);
  //   var joinXl = bigAmount.join();
  //   print(
  //       'Kredit götürənlərin toplam məbləqi $bigPrice₼-dan coxdu, məbləgin toplam rəqəmi $joinXl₼');
  // }
}
