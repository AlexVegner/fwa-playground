import 'package:flutter/material.dart';
import 'package:fwa_playground/models/item_model.dart';
import 'package:fwa_playground/navigation/routes/router.dart';
import 'package:fwa_playground/state_provider/providers/items_provider.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {

  ListPage({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';
    final itemProvider = Provider.of<ItemsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: itemProvider.items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = itemProvider.items[index];

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
                itemProvider.selectedItem = item;
                Navigator.of(context).pushNamed(Router.DETAILS_ROUTE); 
                // Navigator.of(context).pushNamed('${Router.DETAILS_ROUTE}/$index');
              },
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}

