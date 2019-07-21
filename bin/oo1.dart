void main() {
  Person john = Person('John');
  john.speak();
}

//class person(){}
//error: A class declaration must have a body, even if it is empty.
class Person {
  var name;

  Person(this.name);
  // 这里需要定义构造函数如何传参
  // 如果不定义，会默认执行 Person()
  speak() {
    print("My name is $name");
  }
}
