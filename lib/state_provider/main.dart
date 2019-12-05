import 'package:flutter/material.dart';
import 'package:fwa_playground/models/fake_items_generator.dart';
import 'package:fwa_playground/navigation/pages/home_page.dart';
import 'package:fwa_playground/state_provider/providers/items_provider.dart';
import 'package:fwa_playground/state_provider/routes/router.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemsProvider>(
      create: (_) {
        return ItemsProvider(items: generateItems());
      },
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

