import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/src/data/questions.dart';
import 'package:flutter_quiz_app/src/widgets/summary_item.dart';

class QuestionsSummary extends StatelessWidget {

  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
              (data) {
                return SummaryItem(itemData: data);
              }
          ).toList(),
        ),
      ),
    );
  }

}