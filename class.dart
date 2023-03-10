import 'dart:io';
import 'dart:math';

void main() {

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

  for (var i = 0; i < 3; i++) {
    print('how fast do you drive on the road?');
    String mySpd = stdin.readLineSync()!;
    var parseSpeed = int.parse(mySpd);
    final car1 = Car(parseSpeed);
    car1.warn();
  }
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
