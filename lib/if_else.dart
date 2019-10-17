void main() {
  String d = 'aa' == 'aas' ? '1': '2'; 
  if (d == 'aa') {
    d = 'hello';
  } else if (d == 'bb') {
    d = 'no';
  } else {
    d = 'yes';
  }

  switch (d) {
    case 'aa':
      d = 'hello';
      break;
    case 'bb':
      d = 'no';
      break;
    default: 
      d = 'yes';   
  }


}
