import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              body1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ))),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _selectedButton;

  @override
  void initState() {
    _selectedButton = 'init state';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.red,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.camera),
                    onPressed: () {
                      if (mounted) {
                        setState(() {
                          _selectedButton = 'camera';
                        });
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'add';
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        _selectedButton = 'remove';
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Text(_selectedButton,
                  style: Theme.of(context).textTheme.body1.copyWith(
                        fontSize: 40,
                      )),
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.red,
                      child: new Text("Babe")),
                    flex: 1,
                  ),
                  Expanded(
                    child: new Text("I miss you"),
                    flex: 1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // / This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
