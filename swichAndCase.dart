void main(List<String> args) {
  var a = 15, b = 20;

  for (var i = 0; i < b; i++) {
    print(i);
  }
  var res = a == 5 ? 1 : 0;
  print(res);
  var digit = 5;
  switch (digit) {
    case 4:
      print('Equal 4');
      break;
    case 5:
      print('Equal 5');
      break;
    default:
      print('not lucky equal');
  }
}
