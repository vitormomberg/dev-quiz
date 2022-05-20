import 'package:DevQuiz/pages/home/home_repository.dart';
import 'package:DevQuiz/pages/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

String imgUserProfile =
    "https://media-exp1.licdn.com/dms/image/C4D03AQEduo5iSUYpng/profile-displayphoto-shrink_100_100/0/1635547749477?e=1657756800&v=beta&t=NgAhPgL9JYPQH23G1igCuW0c2gIprixGFt1zCJIHPzM";

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    quizzes = await repository.getQuizzes();

    state = HomeState.success;
  }
}
