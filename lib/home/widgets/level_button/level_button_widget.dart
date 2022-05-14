import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylesButton extends Object {
  final String label;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;

  StylesButton(
      {required this.label,
      required this.borderColor,
      required this.backgroundColor,
      required this.textColor});
}

class LevelButtonWidget extends StatelessWidget {
  final String id;

  LevelButtonWidget({
    Key? key,
    required this.id,
  })  : assert(["easy", "middle", "hard", "expert"].contains(id)),
        super(key: key);

  final Map<String, StylesButton> config = {
    'easy': StylesButton(
        label: 'Fácil',
        backgroundColor: AppColors.levelButtonFacil,
        borderColor: AppColors.levelButtonBorderFacil,
        textColor: AppColors.levelButtonTextFacil),
    'middle': StylesButton(
        label: 'Médio',
        backgroundColor: AppColors.levelButtonMedio,
        borderColor: AppColors.levelButtonBorderMedio,
        textColor: AppColors.levelButtonTextMedio),
    'hard': StylesButton(
        label: 'Difícil',
        backgroundColor: AppColors.levelButtonDificil,
        borderColor: AppColors.levelButtonBorderDificil,
        textColor: AppColors.levelButtonTextDificil),
    'expert': StylesButton(
        label: 'Perito',
        backgroundColor: AppColors.levelButtonPerito,
        borderColor: AppColors.levelButtonBorderPerito,
        textColor: AppColors.levelButtonTextPerito),
  };

  String get label => config[id]!.label;
  Color get backgroundColor => config[id]!.backgroundColor;
  Color get borderColor => config[id]!.borderColor;
  Color get textColor => config[id]!.textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.fromBorderSide(BorderSide(color: borderColor)),
          color: backgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(color: textColor, fontSize: 13),
        ),
      ),
    );
  }
}
