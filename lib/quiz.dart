import 'package:flutter/material.dart';
import 'package:i_quiz/answer.dart';
import 'package:i_quiz/qustions.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.qustions,
      required this.qustionIndex,
      required this.answerQustion});
  final List<Map<String, Object>> qustions;
  final int qustionIndex;
  final Function answerQustion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(qustions[qustionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQustion(answer['score']),
              answers: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
