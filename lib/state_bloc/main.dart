import 'package:flutter/material.dart';
import 'package:fwa_playground/navigation/pages/home_page.dart';
import 'package:fwa_playground/navigation/routes/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/items/items_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ItemsBloc(),
      child: MaterialApp(
        navigatorKey: navigationKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        routes: Router.routes,
        onGenerateRoute: Router.onGenerateRoute,
        onUnknownRoute: Router.onUnknownRoute,
      ),
    );
  }
}

