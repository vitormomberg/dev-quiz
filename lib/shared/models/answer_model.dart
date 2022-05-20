import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'isRight': isRight});

    return result;
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'] ?? '',
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));
}
