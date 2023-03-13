import 'dart:io';
import 'dart:math';

void main() {
  // var user1 = MobileGroup(
  //     'Tevi', 25, 'mobile developer', false, ['Football', 'Tennis']);
  // user1.info();
  String registrLogin;
  String registrPassword;
  String confirmPassword;
  print('yeni hesap yaratmaq ucun login daxil edin!');
  registrLogin = stdin.readLineSync()!;
  print('yeni şifrə daxil edin!');
  registrPassword = stdin.readLineSync()!;
  print('şifrəni tekrarlayin!');
  confirmPassword = stdin.readLineSync()!;
  var registrUser =
      Registration('$registrLogin', '$registrPassword', '$confirmPassword');
  var isConfirm = registrPassword == confirmPassword;

  if (isConfirm) {
    print('tebrik edirik siz registrasiyani kecdiniz');
    registrUser.registrInfo();
  } else {
    print('siz shifreni duz yiqmadiniz');
  }

  List<String> dialogs = [];
  print('loginivizi yazin');
  var authLogin = stdin.readLineSync();
  print('paroluvizi yazin');
  var authPassword = stdin.readLineSync();
  var user = Authorization('$authLogin', '$authPassword');

  if (authLogin != registrLogin && authPassword != registrPassword) {
    print('bele bir user movcud deyil');
  } else if (authPassword != registrPassword || authLogin != registrLogin) {
    print('login veya shifre duz degil');
  } else {
    print('siz hesaba gire bildiniz');
    user.info();
    for (var i = 0; i < 5; i++) {
      print('admin, $authLogin usere messaj yazın');
      var admin = stdin.readLineSync();
      print('user $authLogin admine messaj yazın');
      var user = stdin.readLineSync();
      var dialog = '-admin: $admin\n-$authLogin: $user\n';
      dialogs.add('$dialog');
      print('${dialogs.join('')}');
    }
  }

  // if (authLogin == registrLogin && authPassword == registrPassword) {

  // } else {
  //   print('shifre yada parol duz degil, tezeden prob edin.');
  // }
  // for (var i = 0; i < 3; i++) {
  //   print('how fast do you drive on the road?');
  //   String mySpd = stdin.readLineSync()!;
  //   var parseSpeed = int.parse(mySpd);
  //   final car1 = Car(parseSpeed);
  //   car1.warn();
  // }
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

class Registration {
  String? login;
  String? password;
  String? confirmPassword;
  String? email;

  Registration(login, password, confirmPassword, [email]) {
    this.login = login;
    this.password = password;
    this.confirmPassword = confirmPassword;
    this.email = email;
  }

  void registrInfo() {
    print(
        'Siz teze hesab yaratmış oldunuz. hesaba girmek ucun tezeden login ve parolu yazın!');
  }
}

class Authorization {
  String? login;
  String? password;

  Authorization([login, password]) {
    this.login = login;
    this.password = password;
  }

  void info() {
    print(
        'Salam, sizin login $login ve parol $password. Xow gelmisiniz saytimiza');
  }
}

class Cat {
  String? name;
}

class Murka extends Cat {
  int? age;
}
