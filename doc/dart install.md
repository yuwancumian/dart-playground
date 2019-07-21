在mac上安装dart，和flutter 略有不同

```
brew tap dart-lang/dart
brew install dart --devel
```

疑问：加 —devel （development 有何作用）

新建一个目录叫 dart-playground，初始化文件结构

```
├── bin
│   └── main.dart
└── pubspec.yaml
```

main.dart 

```
void main() {
  print("Hello Dart!");
}
```

然后运行 ` dart bin/main.dart `,  如果终端上打印出了 `Hello Dart!`  ，那么第一个dart 程序就成功运行啦

用 IDEA 来调试dart 的 hello world，遇到的问题：

#### 不要直接保存来调试，而是要运行 Run 命令。

```
Performing hot reload...
Syncing files to device iPhone Xʀ...
Error -32601 received from application: Method not found
Reloaded 0 of 18 libraries in 58ms.
```

#### Get start with `Hello Dart`

```dart
void main() {
  Person p = new Person("Lily", 20);
  print(p.greet());
}
class Person {
  int age;
  String name;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  greet() {
    return 223;
  }
}
```

错误：在greet 前面加 Number，报错：`Undefined class 'Number'.`

在 greet 前面加 void ，报错：`The return type 'int' isn't a 'void', as defined by the method 'greet'.`

重写 greet 方法，改为

```dart
void Greet() {
  print("我是${name}, 今年${age}岁。");
}
```

在main 方法里写 `print(p.Greet());` 报错 `The expression here has a type of 'void', and therefore cannot be used.` 

main 方法里写 `print(p.Greet)`,无报错，打印出了 `flutter: Closure: () => void from Function 'Greet':.`

最后改为 `p.Greet();`终于打印出了 ` 我是Lily, 今年20岁。`