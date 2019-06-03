import 'dart:async';
import 'dart:math';

void main() {
  var random = Random();
  Future.delayed(Duration(seconds: 3), () {
    if (random.nextBool()) {
      return 100;
    } else {
      throw 'boom!';
    }
  }).then(print).catchError(print).whenComplete(() {
    print('done!');
  });

}

