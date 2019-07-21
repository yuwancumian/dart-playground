void main() {
  var aa = new Test();
  aa.first(['abc', '123']);
}

class Test {
  T first<T>(List<T> ts) {
    // Do some initial work or error checking, then...
    T tmp = ts[0];
    print(ts[0]);
    // Do some additional checking or processing...
    return tmp;
  }
}
