import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        height: 32,
        margin: EdgeInsets.only(top: 24),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: LevelButtonWidget(
                id: "easy",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: LevelButtonWidget(
                id: "middle",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: LevelButtonWidget(
                id: "hard",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: LevelButtonWidget(
                id: "expert",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
