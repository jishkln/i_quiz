import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:i_quiz/quiz.dart';
import 'package:i_quiz/qustions.dart';
import 'package:i_quiz/answer.dart';
import 'package:i_quiz/results.dart';

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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your favorite Teacher?',
      'answers': [
        {'text': 'John', 'score': 1},
        {'text': 'Amith', 'score': 1},
        {'text': 'Amal', 'score': 1},
        {'text': 'Pranav', 'score': 1},
      ],
    },
  ];

  int _qustionIndex = 0;
  int _totalScore = 0;
  void _reStart() {
    setState(() {
      _qustionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQustion(
    int score,
  ) {
    _totalScore += score;
    setState(() {
      _qustionIndex = _qustionIndex + 1;
    });

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
          body: (_qustionIndex < qustions.length)
              ? Quiz(
                  qustions: qustions,
                  qustionIndex: _qustionIndex,
                  answerQustion: _answerQustion)
              : Results(
                  restart: _reStart,
                  resultScore: _totalScore,
                )),
    );
  }
}
