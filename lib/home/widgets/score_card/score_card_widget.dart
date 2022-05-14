import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          height: 136,
          width: double.infinity,
          child: Container(
            child: Padding(
                padding: EdgeInsets.all(24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ChartWidget(
                      percent: 0.5,
                    )),
                    Expanded(
                        flex: 3,
                        child: Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text("Vamos começar",
                                        style: AppTextStyles.heading)),
                                Text(
                                    "Complete os desafios e avance em conhecimento",
                                    style: AppTextStyles.body),
                              ],
                            )))
                  ],
                )),
          ),
        ));
  }
}
