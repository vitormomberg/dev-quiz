import 'package:DevQuiz/pages/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/pages/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = 185;
    final double itemWidth = (size.width - 48) / 2;

    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Container(
            height: 32,
            margin: EdgeInsets.only(top: 24),
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              childAspectRatio: (itemWidth / itemHeight),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
