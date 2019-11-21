import 'package:flutter/material.dart';
import 'package:fwa_playground/navigation/pages/details_page.dart';
import 'package:fwa_playground/navigation/pages/home_page.dart';
import 'package:fwa_playground/navigation/pages/list_page.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();


abstract class Router {
  static const String HOME_ROUTE = '/home';
  static const String LIST_ROUTE = '/list';
  static const String DETAILS_PATH = 'details';
  static const String DETAILS_ROUTE = '/$DETAILS_PATH';

  static Widget get home => HomePage();

  static final routes = {
    HOME_ROUTE: (context) => home,
    LIST_ROUTE: (context) => ListPage(),
    // DETAILS_ROUTE: (context) => DetailsPage(),

  };

  static final RouteFactory onGenerateRoute = (RouteSettings settings) {
    final List<String> pathElements = settings.name.split('/');
    if (pathElements[0] != '') {
      return null;
    }
    final _route = pathElements[1];
    switch (_route) {
      //case 'login': return _onAuthRoute;

      default: return null;
    }

    // if (pathElements[1] == 'location') {
    //   return _locationRoute(pathElements);
    // } 
    // return null;
  };

  static final RouteFactory onUnknownRoute = (RouteSettings settings) {
    return MaterialPageRoute(builder: (BuildContext context) => HomePage());
  };

}

//   static MaterialPageRoute<bool> _locationRoute(List<String> pathElements) {
//     if (pathElements[2] == 'details') {
//       return MaterialPageRoute<bool>(
//         builder: (_) => InventoryDetailsPage(),
//       );
//     } else if (pathElements[2] == 'create') {
//       return MaterialPageRoute<bool>(
//         builder: (BuildContext context) => CreateWizardLocationPage(),
//       );
//     } else if (pathElements[2] == 'edit') {
//       return MaterialPageRoute<bool>(
//         builder: (BuildContext context) => LocationEditPlacePage(),
//       );
//     } else {
//       return null;
//     }
//   }
