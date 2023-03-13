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