void main() {
  var bob = User('Bob', 42, true, ['Football', 'Bastekball'])
    ..name = 'Bob'
    ..age = 42;
  bob.info();

  var alex = User('alex', 25, false, ['game', 'tennis']);
  alex.info();
}

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
