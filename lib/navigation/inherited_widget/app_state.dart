import 'package:flutter/cupertino.dart';

class AppState extends InheritedWidget {
  final String detailsTitle;
  final String detailsSubtitle;

  AppState({Key key, Widget child, this.detailsTitle, this.detailsSubtitle}): super(key: key, child: child);

  static AppState of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppState) as AppState;
  }
  
  @override
  bool updateShouldNotify(AppState old) =>
    detailsTitle != old.detailsTitle || detailsSubtitle != old.detailsSubtitle;
}