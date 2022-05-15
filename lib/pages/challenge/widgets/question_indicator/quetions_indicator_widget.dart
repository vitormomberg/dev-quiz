import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Questão 04', style: AppTextStyles.body15),
              Text('de 10', style: AppTextStyles.body15)
            ]),
            SizedBox(height: 16),
            ProgressIndicatorWidget()
          ],
        ),
      ),
    );
  }
}
