import 'package:fwa_playground/models/fake_items_generator.dart';
import 'package:fwa_playground/models/item_model.dart';

class ItemsState {
  final List<ListItem> items;
  final MessageItem selectedItem;

  ItemsState({this.items, this.selectedItem});

  factory ItemsState.initial() {
    return ItemsState(items: generateItems());
  }
}
