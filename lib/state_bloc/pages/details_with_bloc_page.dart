import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwa_playground/models/item_model.dart';
import 'package:fwa_playground/state_bloc/bloc/items/bloc.dart';


class DetailsWithBlocPage extends StatefulWidget {
  final int index;
  DetailsWithBlocPage({Key key, this.index}) : super(key: key);

  @override
  _DetailsWithBlocPageState createState() => _DetailsWithBlocPageState();
}

class _DetailsWithBlocPageState extends State<DetailsWithBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details screen'),
      ),
      body: Container(
        child: BlocBuilder<ItemsBloc, ItemsState>(builder: (context, state) {
          var selected = state.selectedItem;
          if (widget.index != null) {
            selected = state.items[widget.index] as MessageItem;
          }
          return ListTile(
            title: Text(selected.sender),
            subtitle: Text(selected.body),
          );
        }),
      ),
    );
  }
}
