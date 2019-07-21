void main(List<String> a1) {
  var a = new Girl();
  print(a.name);
}

class Person {
  int age = 19;
  String name;
  Person(this.name);
}

class Girl extends Person {
  Girl() : super('royi');
  //派生类里构造函数里执行了基类的super
}
