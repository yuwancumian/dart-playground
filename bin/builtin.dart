void main() {
  //number
  int a = 123;
  print(a);

  //double
  double b = 2;
  print(b);

  //string
  String s = "hello";
  print(s);

  var str1 = "Lorem";
  var str2 = "ipsum";
  String str = "$str1 $str2 ccc";
  print(str);

  var str3 = """Multi 
  line 
  String """;
  print(str3);
  var str4 = 'a'
      'b'
      'c'
      'e';
  print(str4);
  // Boolean
  bool isBrowser = true;
  bool isOk = false;
  print(isBrowser || isOk);
  print(isBrowser && isOk);

  //Function
  sum(a, b) {
    return a + b;
  }

  print(sum(3, 5));

  var minus = (int a, int b) {
    return a - b;
  };
  print(minus(13, 8));

  var product = (int a, int b) => a * b;
  print(product(3, 5));
}
