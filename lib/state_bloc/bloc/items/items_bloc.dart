import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  @override
  ItemsState get initialState => ItemsState.initial();

  @override
  Stream<ItemsState> mapEventToState(
    ItemsEvent event,
  ) async* {
    if (event is SelectItemItemsEvent) {
      yield ItemsState(items: state.items, selectedItem: event.payload);
    } else if (event is SetItemListItemsEvent) {
      yield ItemsState(items: event.payload, selectedItem: state.selectedItem);
    }
  }
}
