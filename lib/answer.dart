import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.selectHandler});
  final VoidCallback selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: const Text("Answer 1"),
      ),
    );
  }
}
