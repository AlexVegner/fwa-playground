
import 'package:flutter/material.dart';
import 'package:fwa_playground/models/item_model.dart';

class ItemsProvider with ChangeNotifier {
  List<ListItem> _items;
  MessageItem _selectedItem;

  ItemsProvider({items, selectedItem}): _items = items, _selectedItem = selectedItem;

  get items => _items;

  set items(List<ListItem> value) {
    _items = value;
    notifyListeners();
  }
  
  get selectedItem => _selectedItem;

  set selectedItem(MessageItem value) {
    _selectedItem = value;
    notifyListeners();
  }
}