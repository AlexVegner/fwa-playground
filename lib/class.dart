// import 'package:flutter/foundation.dart';

import 'package:flutter/foundation.dart';

class Person extends Print {
  String name;
  Person._({@required this.name});
  factory Person.intAlex() {
    return Person._(name: 'Alex');
  }

  factory Person.intDima() {
    return Person._(name: 'Dima');
  }

  @override 
  printValue() {
    String result = '''
      name = $name
      objectInfo: ${super.printValue()}
    ''';
    print(result);
  }

  printAll() {
    this.printValue();
    super.printValue();
  }
}

mixin Worker{
	String company;

  //work2(); 

	void work(){
        print("Work in $company");
    }
}

abstract class Print {
  printValue() {
    print(super.toString());
  }
}

class Person2 {
  final String name;
  final int age;

  Person2(name, age): this.name = name, this.age = age  ?? 10;
  // Person2(name, age) {
  //   this.name = name;
  //   this.age = age;
  // }

  void hello() {
    print('Hello $name');
  }
  
}

class Student implements Person2 {
  final String name;
  final int age;
  Student(this.name, this.age);

  T agePlusValue<T extends num>(T value) {
    return value + age;
  }

  @override
  void hello() {
    // TODO: implement hello
  }
}





class Student2 extends Person2 with Worker {
  Student2(name, age) : super(name, age);
}

class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
}



const TEST = true;

class Session {
  static Session instance;
  String sessionId;

  Session._();

  factory Session.init() {
    if (instance == null) {
      instance = Session._();
    }
    return instance;
  }
}

class SessionHoder<T> {
  T sessionId;
  SessionHoder(this.sessionId);
}


main() {
  // final p = Person(name: 'Dima');
  // p.name = 'Alex';
  // p = Person(); // can't set because it final
  final p1 = Person.intAlex();
  final p2 = Person.intDima();

  final s1 = Session.init();
  final s2 = Session.init();
  final s3 = Session.init();

  var s4 = Session.instance;

  var point1 = const Point(3, 3);
  var point2 = const Point(3, 3);
  var point3 = const Point(3, 3);

  SessionHoder<int> sessionHoder = SessionHoder(2);
  SessionHoder<String> sessionHoder2 = SessionHoder('sdfsdgfsgdjfh');

  Student('Alex', 11).agePlusValue(3.3);
}

