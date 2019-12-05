import 'package:flutter/material.dart';
import 'package:fwa_playground/models/item_model.dart';
import 'package:fwa_playground/state_provider/providers/items_provider.dart';
import 'package:provider/provider.dart';

class DetailsWithProviderPage extends StatefulWidget {
  final int index;
  DetailsWithProviderPage({Key key, this.index}) : super(key: key);

  @override
  _DetailsWithProviderPageState createState() => _DetailsWithProviderPageState();
}

class _DetailsWithProviderPageState extends State<DetailsWithProviderPage> {
  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemsProvider>(context);
    var selected = itemProvider.selectedItem;
    if (widget.index != null) {
      selected = itemProvider.items[widget.index] as MessageItem;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Details screen'),
      ),
      body: Container(
        child: ListTile(
          title: Text(selected.sender),
          subtitle: Text(selected.body),
        ),
      ),
    );
  }
}
