import 'dart:math';

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(6) + 1; // from 0 to 9 included
  print(randomNumber);

  int randomNumber2 = random.nextInt(6) + 1; // from 1 to 10 included
  print(randomNumber2);
}