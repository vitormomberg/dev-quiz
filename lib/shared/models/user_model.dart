import 'dart:convert';

class UserModel {
  final String name;
  final String photoURL;
  final int score;

  UserModel({
    required this.name,
    required this.photoURL,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'photoURL': photoURL});
    result.addAll({'score': score});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      photoURL: map['photoURL'] ?? '',
      score: map['score']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
