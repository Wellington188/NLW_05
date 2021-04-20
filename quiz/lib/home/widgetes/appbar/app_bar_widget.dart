import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgetes/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: "Wellington DEV",
                                style: AppTextStyles.titleBold)
                          ])),
                      Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media-exp1.licdn.com/dms/image/C4D03AQF5MrolHN9UlA/profile-displayphoto-shrink_100_100/0/1614042761517?e=1624492800&v=beta&t=ZrdXPZVZpOLiMxqC1gxHNwd9pEmw1vRdJRSPVBa_Wio"))),
                      )
                    ],
                  ),
                ),
                Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
              ]),
            ));
}
