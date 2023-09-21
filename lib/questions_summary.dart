import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor:
                            data["user_answer"] == data["correct_answer"]
                                ? const Color.fromARGB(255, 54, 146, 222)
                                : const Color.fromARGB(255, 228, 68, 137),
                        child: Text(
                          (data["question_index"] as int).toString(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["question"] as String,
                              style: const TextStyle(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data["user_answer"] as String,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 228, 68, 137)),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              data["correct_answer"] as String,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 54, 146, 222)),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
