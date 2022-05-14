import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

String imgUserProfile =
    "https://media-exp1.licdn.com/dms/image/C4D03AQEduo5iSUYpng/profile-displayphoto-shrink_100_100/0/1635547749477?e=1657756800&v=beta&t=NgAhPgL9JYPQH23G1igCuW0c2gIprixGFt1zCJIHPzM";

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(children: [
                Container(
                    height: 160,
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                                  text: "Vitor",
                                  style: AppTextStyles.titleBold,
                                )
                              ])),
                          Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(imgUserProfile),
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
