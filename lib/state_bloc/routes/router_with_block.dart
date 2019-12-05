import 'package:flutter/material.dart';
import 'package:fwa_playground/navigation/pages/home_page.dart';
import 'package:fwa_playground/state_provider/pages/details_with_provider_page.dart';
import 'package:fwa_playground/state_provider/pages/list_with_provider_page.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

abstract class RouterWithBloc {
  static const String HOME_ROUTE = '/home';
  static const String LIST_ROUTE = '/list';
  static const String DETAILS_PATH = 'details';
  static const String DETAILS_ROUTE = '/$DETAILS_PATH';

  static Widget get home => HomePage();

  static final routes = {
    HOME_ROUTE: (context) => home,
    LIST_ROUTE: (context) => ListPage(),
    DETAILS_ROUTE: (context) => DetailsWithProviderPage(),
  };

  static final RouteFactory onGenerateRoute = (RouteSettings settings) {
    final List<String> pathElements = settings.name.split('/');
    if (pathElements[0] != '') {
      return null;
    }
    final _route = pathElements[1];
    switch (_route) {
      case DETAILS_PATH:
        return _detailsRoute(pathElements);
      default:
        return null;
    }
  };

  static final RouteFactory onUnknownRoute = (RouteSettings settings) {
    return MaterialPageRoute(builder: (BuildContext context) => HomePage());
  };

  static MaterialPageRoute<bool> _detailsRoute(List<String> pathElements) {
    if (pathElements[2].isNotEmpty) {
      return MaterialPageRoute<bool>(
        builder: (_) => DetailsWithProviderPage(index: int.parse(pathElements[2])),
      );
    }
  }
}
