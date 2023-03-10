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

  var user1 = MobileGroup(
      'Tevi', 25, 'mobile developer', false, ['Football', 'Tennis']);
  user1.info();

  List<String> data = [];
  print('write your login');
  var authLogin = stdin.readLineSync();
  print('write your password');
  var authPassword = stdin.readLineSync();
  var user = Authorization('$authLogin', '$authPassword', true);
  data.add(user.login!);
  data.add(user.password!);
  user.info();
  print('Database: $data');

  // for (var i = 0; i < 3; i++) {
  //   print('how fast do you drive on the road?');
  //   String mySpd = stdin.readLineSync()!;
  //   var parseSpeed = int.parse(mySpd);
  //   final car1 = Car(parseSpeed);
  //   car1.warn();
  // }
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

class MobileGroup {
  String? group;
  String? name;
  int? age;
  bool? isActive;
  List<String>? hobbies;

  MobileGroup(name, [age, group, isActive, hobbies]) {
    this.name = name;
    this.age = age;
    this.group = group;
    this.isActive = isActive;
    this.hobbies = hobbies;
  }

  void info() {
    var married = isActive! ? 'merried' : 'not merried';
    print(
        'User $name is $age years old. Studying in a group $group. He is $married, His hobbies:');
    for (var el in hobbies!) {
      print(el);
    }
  }
}

class Authorization {
  String? login;
  String? password;
  bool? rememberMe;

  Authorization([login, password, rememberMe]) {
    this.login = login;
    this.password = password;
    this.rememberMe = rememberMe;
  }

  void info() {
    var saved = rememberMe! ? 'saved' : 'not saved';
    print(
        'Hi, your login is $login and password is $password, and you $saved. Welcome to the site');
  }
}

class Car {
  int? mySpeed;
  int limitSpeed = 90;

  void limit() {
    print(limitSpeed);
  }

  Car(mySpeed) {
    this.mySpeed = mySpeed;
  }

  void warn() {
    var lsp = mySpeed! > 90
        ? 'I stopped you for speeding'
        : 'everything is ok, you follow the rules of the road';

    print(
        'your speed $mySpeed km/h, speed limit of this road $limitSpeed km/h, $lsp');
  }
}
