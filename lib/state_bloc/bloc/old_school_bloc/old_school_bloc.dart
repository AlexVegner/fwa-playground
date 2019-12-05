import 'dart:async';

import 'package:fwa_playground/models/item_model.dart';

abstract class Bloc {
  void dispose();
}

class LocationBloc implements Bloc {
  List<ListItem> _items;
  List<ListItem> get items => _items;

  // 1
  final _itemsController = StreamController<List<ListItem>>();

  // 2
  Stream<List<ListItem>> get itemsStream => _itemsController.stream;

  // 3
  void set(List<ListItem> items) {
    _items = items;
    _itemsController.sink.add(items);
  }

  // 4
  @override
  void dispose() {
    _itemsController.close();
  }
}