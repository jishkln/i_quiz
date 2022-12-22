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
  final qustions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Yellow', 'Green'],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Dog', 'Tiger', 'Lion', 'Cat'],
    },
    {
      'questionText': 'what\'s your favorite Teacher?',
      'answers': ['John', 'Amith', 'Amal', 'Pranav'],
    },
  ];

  var _qustionIndex = 0;
  void _answerQustion() {
    if (_qustionIndex < qustions.length - 1) {
      setState(() {
        _qustionIndex = _qustionIndex + 1;
      });
    }
    log(_qustionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
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
              qustionText: qustions[_qustionIndex]['questionText'] as String,
            ),
            ...(qustions[_qustionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(selectHandler: _answerQustion, answers: answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
