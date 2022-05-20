import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;

  const ProgressIndicatorWidget({
    Key? key,
    this.value = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: 4,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
      semanticsLabel: 'Indicador de progresso',
    );
  }
}
