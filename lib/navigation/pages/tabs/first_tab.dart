import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('First page', style: Theme.of(context).textTheme.title.copyWith(
          fontSize: 30,
        ),),
      ),
    );
  }
}
