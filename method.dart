import 'dart:io';
import 'dart:math';

void main() {
  plus(40, 2);
  minus(44, 2);
  remainder(100, 2);
  multiplication(21, 2);
  division(84, 2);
  root(10);
  degree(2);
  String groupNumber;
  Map<String, int> firstGroup = {
    "Riyaziyyat": 8,
    "Fizika": 8,
    "Kimya": 4,
    "Ana dili": 4,
    "Xarici dil": 4
  };
  Map<String, int> secondGroup = {
    "Riyaziyyat": 8,
    "Cografiya": 8,
    "Tarix": 4,
    "Ana dili": 4,
    "Xarici dil": 4
  };
  Map<String, int> thirdGroup = {
    "Riyaziyyat": 4,
    "Tarix": 8,
    "Edebiyyat": 4,
    "Ana dili": 8,
    "Xarici dil": 4
  };
  Map<String, int> fourthGroup = {
    "Riyaziyyat": 4,
    "Fizika": 8,
    "Kimya": 4,
    "Ana dili": 4,
    "Biologiya": 8
  };
  Map<String, int> resultMap = {};

  loop:
  while (true) {
    print("Enter your group number(Please,use only 1,2,3,4):");
    groupNumber = stdin.readLineSync()!;
    switch (groupNumber) {
      case "1":
        resultMap = firstGroup;
        break;
      case "2":
        resultMap = secondGroup;
        break;
      case "3":
        resultMap = thirdGroup;
        break;
      case "4":
        resultMap = fourthGroup;
        break;
      default:
        groupNumber = "0";
        print("Wrong entrance,please try again and read description!");
    }
    if (groupNumber != "0") {
      counting(resultMap);
      break loop;
    }
  }
}

void plus(int a, int b) {
  print(a + b);
}

void minus(int a, int b) {
  print(a - b);
}

void remainder(int a, int b) {
  print(a % b);
}

void multiplication(int a, int b) {
  print(a * b);
}

void division(int a, int b) {
  print(a / b);
}

void root(int a) {
  print(sqrt(a));
}

void degree(int a) {
  int sumNum = 2;
  print(pow(sumNum, a));
}
void counting(Map<String, int> hashMap) {
  int rightAnswers = 0;
  int wrongAnswers;
  double last = 0;
  for (var element in hashMap.entries) {
    print(
        "Enter your right point of ${element.key} (it should be between 0 and 25):");
    rightAnswers = int.parse(stdin.readLineSync()!);
    print(
        "Enter your wrong point of ${element.key} (it should be between 0 and 25):");
    wrongAnswers = int.parse(stdin.readLineSync()!);
    if (rightAnswers < 0 || rightAnswers > 25) {
      print(
          "Wrong! Your answer cannot be $rightAnswers. So for this subject it will be 0 point!");
    } else {
      //wrongAnswers=25-rightAnswers;
      last += rightAnswers * element.value - wrongAnswers * 0.25;
    }
  }
  print("Your full point is:$last");
}
