#### 类与对象

- 使用关键字class声明一个类
- 使用关键字new创建一个对象，new可以省略
- 所有对象都继承Object类



#### 构造函数

构造函数是一种特殊函数，在dart 中，构造函数的名称就是类名，和普通函数相比，构造方法没有返回值。也没有 void ，调用构造函数，需要使用new，现在dart中new 可以省略。

```dart
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
```



#### super 关键字

使用 `extends` 关键字创建子类, `super` 引用父类，

可以放在构造函数里，也可以不放在构造函数里

Pug类继承了Dog类，并且在Pug的构造函数里用SUPER关键字调用了Dog类的构造函数，

构造函数会在生成实例的时候，将类里面 constructor 里执行的值赋给实例。



#### 继承

使用 `extends` 创建子类，`super` 引用父类。
子类可以覆写实例函数，getter 和 setter。可以使用 `@override` 注解 表明是有意覆写的：

```
class SmartTelevision extends Television {
  @override
  void turnOn() {...}
  // ···
}
```



#### 重载

有时，一个函数中可能需要传递多个参数。那么，如何让这类函数的参数声明变得更加优雅、可维护，同时降低调用者的使用成本呢？

C++ 与 Java 的做法是，提供函数的重载，即提供同名但参数不同的函数。但**Dart 认为重载会导致混乱，因此从设计之初就不支持重载，而是提供了可选命名参数和可选参数**。

具体方式是，在声明函数时：

- 给参数增加{}，以 paramName: value 的方式指定调用参数，也就是可选命名参数；

  ```dart
  // 可选命名参数的用法，在定义函数的时候给参数加上 {}
  void enable1Flags({bool bold, bool hidden}) => print("$bold , $hidden");
  ```

  

- 给参数增加 []，则意味着这些参数是可以忽略的，也就是可选参数。

  ```dart
  // 可忽略的参数在函数定义时用 [] 符号指定
  void enable3Flags(bool bold, [bool hidden]) => print("$bold ,$hidden");
  ```

  

