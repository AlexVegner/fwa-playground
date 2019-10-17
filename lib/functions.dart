String f1() => 'sf';

String f2() {
  return 'sf';
}

Function f3() {
  return f2;
}

Function f4(int a1, {int a2 = 6}) {
  return f2;
}

Function f5(int a1, [int a2 = 6]) {
  return f2;
}

void main() {
  String d = f1();

  f4(1, a2: 2);
  f5(1, 3);
}


