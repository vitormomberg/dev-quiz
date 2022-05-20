import 'package:DevQuiz/pages/home/widgets/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({
    required this.user,
  }) : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(children: [
                Container(
                    height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Align(
                      alignment: Alignment(0.0, -0.25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                  text: user.name,
                                  style: AppTextStyles.titleBold,
                                )
                              ])),
                          Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(user.photoURL),
                                  )))
                        ],
                      ),
                    )),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: ScoreCardWidget(),
                )
              ]),
            ));
}
