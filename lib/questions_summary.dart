import 'package:flutter/material.dart';
import 'package:sample_flutter/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: summaryData.map((data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionIdentifier(
                          isCorrectAnswer:
                              (data['user_answer'] == data['correct_answer']),
                          questionIndex: data['question_index'] as int),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['question_text'] as String,
                                  style: const TextStyle(color: Colors.white)),
                              const SizedBox(height: 5),
                              Text(data['user_answer'] as String,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 253, 215, 203))),
                              Text(data['correct_answer'] as String,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 206, 219, 255))),
                            ]),
                      ),
                    ]),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
