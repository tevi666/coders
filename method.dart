import 'dart:math';

void main() {
  plus(40, 2);
  minus(44, 2);
  remainder(100, 2);
  multiplication(21, 2);
  division(84, 2);
  root(10);
  degree(2);
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
