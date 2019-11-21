import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Third page', style: Theme.of(context).textTheme.title.copyWith(
          fontSize: 30,
        ),),
      ),
    );
  }
}