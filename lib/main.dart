import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:i_quiz/qustions.dart';
import 'package:i_quiz/answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qustionIndex = 0;
  void _answerQustion() {
    setState(() {
      _qustionIndex = _qustionIndex + 1;
    });
    log(_qustionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var qustions = [
      'what\'s your favorite color',
      'what\'s your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My app',
          ),
        ),
        body: Column(
          children: [
            Qustions(
              qustionText: qustions[_qustionIndex],
            ),
            Answer(selectHandler: _answerQustion),
            Answer(selectHandler: _answerQustion),
            Answer(selectHandler: _answerQustion),
          ],
        ),
      ),
    );
  }
}
