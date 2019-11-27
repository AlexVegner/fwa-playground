import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Second page', style: Theme.of(context).textTheme.title.copyWith(
          fontSize: 30,
        ),),
      ),
    );
  }
}