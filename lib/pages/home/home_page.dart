import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/pages/home/home_controller.dart';
import 'package:DevQuiz/pages/home/home_state.dart';
import 'package:DevQuiz/pages/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/pages/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = 185;
    final double itemWidth = (size.width - 48) / 2;

    if (controller.state == HomeState.loading) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.purple),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBarWidget(
        user: controller.user!,
      ),
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
              children: controller.quizzes!
                  .map((e) => QuizCardWidget(
                        title: e.title,
                        percent: e.questionsAnswered / e.questions.length,
                        progress:
                            '${e.questionsAnswered}/${e.questions.length}',
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
