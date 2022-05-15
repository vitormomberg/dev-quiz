import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              AppImages.data,
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child:
                Text('Gerenciamento de Estado', style: AppTextStyles.heading15),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text('3 de 10', style: AppTextStyles.body11),
              ),
              Expanded(
                flex: 1,
                child: ProgressIndicatorWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
