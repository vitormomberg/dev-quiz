import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get parse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito,
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito",
      }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.imagem,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'questions': questions.map((x) => x.toMap()).toList()});
    result.addAll({'questionsAnswered': questionsAnswered});
    result.addAll({'imagem': imagem});
    result.addAll({'level': level.parse});

    return result;
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'] ?? '',
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionsAnswered: map['questionsAnswered']?.toInt() ?? 0,
      imagem: map['imagem'] ?? '',
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
