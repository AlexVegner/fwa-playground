
main() {
  int t = 1;
  int v = f(); //2
  int v1 = f(a1: 3); //3

}

int f({int a1}){
  return a1 ?? 2;
}

int f2({int a1}){
  int aa = a1;
  aa ??= 2;
  return aa;
}