import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.resultScore, required this.restart});
  final int resultScore;
  final Function() restart;

  String get result {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome ";
    } else if (resultScore <= 12) {
      resultText = "You are good";
    } else if (resultScore <= 15) {
      resultText = "You are strange";
    } else {
      resultText = "You are bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton.icon(
              onPressed: restart,
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text('Restart'))
        ],
      ),
    );
  }
}
