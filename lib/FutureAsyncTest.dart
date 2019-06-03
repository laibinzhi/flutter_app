import 'dart:async';

void main() {
  print('t1: ' + DateTime.now().toString());
  test();
  print('t2: ' + DateTime.now().toString());
}

void test() async {
  int result = await Future.delayed(Duration(microseconds: 2000), () {
    return Future.value(123);
  });
  print('t3: ' + DateTime.now().toString());
  print(result);
}
