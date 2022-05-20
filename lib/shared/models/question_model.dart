import 'dart:convert';

import 'package:DevQuiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'answers': answers.map((x) => x.toMap()).toList()});

    return result;
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'] ?? '',
      answers: List<AnswerModel>.from(
          map['answers']?.map((x) => AnswerModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
