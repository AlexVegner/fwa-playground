import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final String subtitle;

  DetailsPage({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details screen'),
      ),
      body: Container(
        child: ListTile(
          title: Text(widget.title),
          subtitle: Text(widget.subtitle),
        ),
      ),
    );
  }
}
