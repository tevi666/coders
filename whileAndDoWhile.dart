import 'dart:io';

void main(List<String> args) {
  // var i = 100;
  // while (i < 10) {
  //   print(i);
  //   i++;
  // }

  // do {
  //   print(i);
  //   i++;
  // } while (i < 10);

  var sum = 0;
  String? input;

  print(
      'Enter numbers to calculate the amount. To complete the work, enter "stop" ');

  do {
    try {
      input = stdin.readLineSync()!;
    } catch (e) {

      print('Input error, please try again');
      continue;
    }

    var number = int.tryParse(input);
    if (number != null) {
      sum += number;
      print('Sum: ${sum}');
    } else if (input == 'stop') {
      print('Job completed');
    } else {
      print('Input error, please enter an integer');
      continue;
    }
  } while (input != 'stop');
}
