// numbers // int // double
// strings
// booleans
// lists (also known as arrays)
// sets
// maps
// runes (for expressing Unicode characters in a string)
// symbols
// dynamic

bool b12 = true;


void main() {
  print('Hello World');

  var ds = 2;
  void main1() {
    ds = 3;

  }
  // dynamic
  dynamic di;
  di = 'dfsdf';
  di = 1;

  // int
  int x = 1;
  x = 2;
  x = 3;
  var hex = 0xDEADBEEF;

  // double
  var d = 1.1;
  var dExponents = 1.42e5;
  double d1 = 1.1; // Equivalent to double z = 1.0.

  String str1 = 'Str1';
  String str2 = "Str1";
  String str3 = '''
  Str
  sdfsdfsd
  sdfsdfsdf
  ''';
  String str = 'hello $str2 i have ${x + 1} usd';
  
  // arrays 
  List<int> list1 = [1, 2, 3]; // List<int>
  List<int> list3 = [];
  List<String> list2 = ['', 'sdf', '']; 

  int item0List1 = list1[0];

  list3 = [
    ...list1,
    4
  ];
  list3.map((int e) => e + 1);



  //[2, 3, 4, 5]
  
  bool promoActive = true;
  var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
  ];
  // var listOfStrings = [
  //   '#0',
  //   for (var i in listOfInts) '#$i'
  // ];

  // Sets
  Set<String> halogens = {'add', 'chlorine', 'bromine', 'iodine', 'astatine'};

  halogens.add('add');

  // Map 
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };  // Map<String, String>

  var firstGifts = gifts['first'];

  // var firstGifts = gifts['fifthdsf']; // null 

  // for (String st11 in halogens) {

  // }

  //Runes 
  //  var clapping = '\u{1f44f}';

  // Runes input = new Runes(
  //     '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  

  bool b1 = true;
  bool b2 = true;
  bool b3 = null; //bool b3;
  


}


