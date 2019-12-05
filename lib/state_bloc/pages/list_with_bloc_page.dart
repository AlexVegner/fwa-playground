import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwa_playground/models/item_model.dart';
import 'package:fwa_playground/navigation/routes/router.dart';
import 'package:fwa_playground/state_bloc/bloc/items/bloc.dart';

class ListPageWithBloc extends StatelessWidget {
  ListPageWithBloc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
        ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: state.items.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = state.items[index];

            if (item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
                onTap: () {
                  // final itemsBloc = BlocProvider.of<ItemsBloc>(context);
                  // itemsBloc.add(SelectItemItemsEvent(item));
                  // Navigator.of(context).pushNamed(Router.DETAILS_ROUTE);
                  Navigator.of(context)
                      .pushNamed('${Router.DETAILS_ROUTE}/$index');
                },
              );
            }
            return SizedBox.shrink();
          },
        );
      }),
    );
  }
}
