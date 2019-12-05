import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fwa_playground/nasa/services/nasa_asteroids_service.dart';

import 'models/asteroid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asteroid Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AsteroidPage(),
    );
  }
}

class AsteroidPage extends StatefulWidget {
  AsteroidPage({Key key}) : super(key: key);

  @override
  _AsteroidPageState createState() => _AsteroidPageState();
}

class _AsteroidPageState extends State<AsteroidPage> {
  String _data;

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    final list = await NasaAsteroidServiceImpl().getAsteroidsNearEarch();
    setState(() {
      _data = jsonEncode(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asteroid Demo'),
      ),
      body: Container(
        child: _buildData(),
        // child: FutureBuilder(
        //   future: NasaAsteroidServiceImpl().getAsteroidsNearEarch(),
        //   builder:
        //       (BuildContext context, AsyncSnapshot<List<Asteroid>> snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done &&
        //         !snapshot.hasError) {
        //       return Center(
        //         child: SingleChildScrollView(
        //           child: Text(jsonEncode(snapshot.data)),
        //         ),
        //       );
        //     } else {
        //       return CircularProgressIndicator();
        //     }
        //   },
        // ),
      ),
    );
  }

  Widget _buildData() {
    if (_data == null) {
      return CircularProgressIndicator();
    } else {
      return Center(
        child: SingleChildScrollView(
          child: Text(jsonEncode(_data)),
        ),
      );
    }
  }
}
