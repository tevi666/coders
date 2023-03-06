import 'dart:io';

void main(List<String> args) {
  int numCheck = 0;
  if (numCheck % 2 == 0) {
    print('even');
  } else if (numCheck % 0 == 0) {
    print('not even not odd');
  } else {
    print('odd');
  }

  int age = 19;

  if (age < 18) {
    print('Spirtli ickiler olmaz)) 18 yashi yoxdur!');
  } else if (age == 0) {
    print('Bilinmir olar yoxsa yox!');
  } else {
    print('Icebiler');
  }
  String? createName;
  String? createPswrd;
  String? rgstName;
  String? rgstPswrd;
  String? confirmPswrd;

  print('Please create new username');
  createName = stdin.readLineSync();
  print('Please create new password');
  createPswrd = stdin.readLineSync();
  print('Enter your name to rgstr:');
  rgstName = stdin.readLineSync();
  print('Enter your pswrd to rgstr:');
  rgstPswrd = stdin.readLineSync();
  bool isConfirm = rgstPswrd == confirmPswrd;

  if (rgstName != createName && rgstPswrd != createPswrd) {
    print('Такого юзера не существует');
  } else if (rgstPswrd != createPswrd || rgstName != createName) {
    print('Логин или пароль был введен неправильно');
  } else {
    print('вы успешно авторизовались');
  }

  if (isConfirm) {
    print('congrast, you have successufly registered');
  } else {
    print('sorry, your password is not confirmed');
  }
}
