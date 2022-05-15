import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final bool isSelected;
  final bool isRight;

  AnswerWidget({Key? key, this.isSelected = false, this.isRight = false})
      : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          border: Border.fromBorderSide(BorderSide(
              color: isSelected ? _selectedBorderCardRight : AppColors.border)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text('Kit de desenvolvimento de interface de usuário',
                  style: isSelected
                      ? _selectedTextStyleRight
                      : AppTextStyles.body)),
          Container(
            margin: EdgeInsets.only(left: 32),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                border: Border.fromBorderSide(BorderSide(
                    color:
                        isSelected ? _selectedBorderRight : AppColors.border)),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  isSelected
                      ? BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 3,
                        )
                      : BoxShadow(),
                ]),
            child: isSelected
                ? Icon(
                    _selectedIconRight,
                    color: AppColors.white,
                    size: 16,
                  )
                : null,
          )
        ],
      ),
    );
  }
}
