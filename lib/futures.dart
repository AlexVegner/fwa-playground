import 'dart:async';

main() async {
  checkVersion(0).then((o) {
    print('ok');
  }).catchError(() {
    print('error');
  });
  try {
    int value = await checkVersion(0);
    print('ok');
  } catch (e) {
    print('error');
  }


}


Future checkVersion(int value) async {
  if (value == 0) {
    throw 'error';
  }
  // Timer(Duration(seconds: 10), () {
  //   return 2;
  // });
  // // Do something with version
  return value;
}
