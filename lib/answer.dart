import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.selectHandler, required this.answers});
  final Function() selectHandler;
  final String answers;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answers),
      ),
    );
  }
}
