void main() {
  var list = [1, 2, 5, 6];
  for (var i = 0; i < list.length; i++) {
    if (i == 1) {
      continue;
    }
    if (list[i] == 5) {
      break;
    }
    print(list[i]);
  }

  // for(;;) { // infinitive loop

  // }

  // while (true) {

  // }
  int i = 6;
  while (i < 10) {
    i++;
  }

  int e = 8;

  do {
    e++;
  } while (e < 10);

  var list2 = [1, 3, 4];
  for (var s in list2) {
    print(s);
  }

  list2.forEach((e) =>  print(e));
}
