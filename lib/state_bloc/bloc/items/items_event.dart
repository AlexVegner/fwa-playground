import 'package:fwa_playground/models/item_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ItemsEvent {}

class SelectItemItemsEvent extends ItemsEvent {
  final MessageItem payload;

  SelectItemItemsEvent(this.payload);
}

class SetItemListItemsEvent extends ItemsEvent {
  final List<ListItem> payload;

  SetItemListItemsEvent(this.payload);
}