###  泛型的使用

什么是泛型

```dart
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
```

在这段代码中，T是替代类型。它是一个占位符，您可以将其视为开发人员稍后将定义的类型。

```
var foo = Foo<Object>();
```

这里该如何理解呢？既不是参数，也不是返回值

### 使用泛型的好处

####  1,使代码提示更友好

```dart
var names = new List<String>();
names.addAll(['Seth', 'Kathy', 'Lars']);
names.add(42);  // IDE warning
```



#### 2,提高代码的重用

比方说你要声明一个内存缓存的接口：

```
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
```

但这时候你发现你需要一个 String类型的接口，而不是 Object类型的，所以你要再创建一个：

```
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}
```

如果你需要再声明一个数字类型的呢？再来一遍吗？很明显泛型就是为这种场景设计的：

```
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
```



#### 3，约束集合类型

```
var names = <String>['Seth', 'Kathy', 'Lars'];
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};
```



#### 4,约束参数类型

在实现泛型类型时，您可能希望限制其参数的类型，我们看到 flutter 里面 state 的定义

```dart
abstract class State<T extends StatefulWidget> extends Diagnosticable {

}
```

```dart
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
	//_MyHomePageState 继承自最基础的State，传入的 MyHomePage 类型和 State 共同对其做了约束
  // State 约定了其参数扩展自StatefulWidget，
}
```



```dart
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
```

