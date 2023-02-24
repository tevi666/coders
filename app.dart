void main() {
  // print('data'); // string
  // print(42); // int
  // var nums = [1, 2, 3, 6, 7, 'hello', true, 8, 5];
  // nums.add(7); // add one int
  // nums.addAll([5, 6, 7, 4, 3]); // add [integer]
  // nums.remove(3); // rm number
  // nums.removeAt(0); // rm index int
  // nums.removeWhere((el) => el >= 5);
  // print(nums);
  // print([1, 2, 3]); // list
  // print(1 == 1); // true
  // print(1 == 2); // false

  // var setInteger = {1, 2, 3, 3, 4, 5, 6, 6}; // set unical integer
  // print(setInteger);

  // print('mcdonald\'s\ngreat');
  // double nmb = 5;
  // String hi = 'hello';
  // bool isHappy = true;
  // print(nmb);
  // print('$hi. i am $isHappy! ${nmb ~/ 5}'); // toInt()
  // dynamic dynamicData = 5;
  // dynamicData = 'i\'m fine';
  // print(dynamicData);

  // var a = 15, b = 20;

  // for (var i = 0; i < b; i++) {
  //   print(i);
  // }
  // var res = a == 5 ? 1 : 0;
  // print(res);
  // var digit = 5;
  // switch (digit) {
  //   case 4:
  //     print('Equal 4');
  //     break;
  //   case 5:
  //     print('Equal 5');
  //     break;
  //   default:
  //     print('not lucky equal');
  // }

  // for || for in ...and... forEach
  // var nums = [1, 6, 3, 4, 2, 6, 8, 9];
  // for (var i = 0; i < nums.length; i++) {
  //   print(nums[i]);
  // }
  // for (var el in nums) {
  //   el++;
  //   print(el);
  // }
  // nums.forEach((element) {
  //   element++;
  //   print(element);
  // });

  // while and do while

  // var i = 100;
  // while (i < 10) {
  //   print(i);
  //   i++;
  // }

  // do {
  //   print(i);
  //   i++;
  // } while (i<10);

  // function
  // sum(5, 7);
  // var res = sum(5, 7);
  // print(res);
  var bob = User('Bob', 42, true, ['Football', 'Bastekball']);
  // ..name = 'Bob'
  // ..age = 42;
  bob.info();

  var alex = User('alex', 25, false, ['game', 'tennis']);
  alex.info();
}

// void sum(a, b) {
//   print('${a + b}');
// }
// int sum(a, b) {
//   return a + b;
// }

// OOP

class User {
  String? name;
  int? age;
  bool? isActive;
  List<String>? hobbies;

  User(name, [age, isActive, hobbies]) {
    this.name = name;
    this.age = age;
    this.isActive = isActive;
    this.hobbies = hobbies;
  }

  void info() {
    var married = isActive! ? 'merried' : 'not merried';
    print('User $name is $age years old. He is $married, His hobbies:');
    for (var el in hobbies!) {
      print(el);
    }
  }
}
