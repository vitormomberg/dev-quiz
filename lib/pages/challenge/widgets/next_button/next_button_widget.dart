import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;

  NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.fontColor,
  }) : super(key: key);

  NextButtonWidget.green({required this.label})
      : this.backgroundColor = AppColors.darkGreen,
        this.borderColor = AppColors.darkGreen,
        this.fontColor = AppColors.white;

  NextButtonWidget.purple({required this.label})
      : this.backgroundColor = AppColors.purple,
        this.borderColor = AppColors.purple,
        this.fontColor = AppColors.white;

  NextButtonWidget.white({required this.label})
      : this.backgroundColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.fontColor = AppColors.lightGrey;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 48),
      child: TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(14)),
            backgroundColor: MaterialStateProperty.all(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            side: MaterialStateProperty.all(BorderSide(
              color: borderColor,
            ))),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
