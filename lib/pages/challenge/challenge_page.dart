import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/question_indicator/quetions_indicator_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(top: true, child: QuestionIndicatorWidget()),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              SizedBox(height: 40),
              Text(
                'O que o FLutter faz em sua totalidade?',
                style: AppTextStyles.heading,
              ),
              SizedBox(height: 24),
              AnswerWidget(
                isRight: false,
                isSelected: true,
              ),
              AnswerWidget(
                isRight: false,
                isSelected: false,
              ),
              AnswerWidget(
                isRight: true,
                isSelected: true,
              ),
              AnswerWidget(
                isRight: false,
                isSelected: false,
              ),
            ])));
  }
}
