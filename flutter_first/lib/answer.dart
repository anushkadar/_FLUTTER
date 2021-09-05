import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final void Function() selectHandler;

  Answer(this.title, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: selectHandler, child: Text(this.title)),
    );
  }
}
