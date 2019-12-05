import 'package:flutter/material.dart';
import 'package:fwa_playground/state_provider/routes/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Router.home,
      routes: Router.routes,
      onGenerateRoute: Router.onGenerateRoute,
      onUnknownRoute: Router.onUnknownRoute,
    );
  }
}

