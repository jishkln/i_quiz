import 'package:flutter/material.dart';

class Qustions extends StatelessWidget {
  const Qustions({super.key, required this.qustionText});
  final String qustionText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        qustionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
