import 'package:DevQuiz/chalenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/chalenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/chalenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChalengePage extends StatefulWidget {
  ChalengePage({Key? key}) : super(key: key);

  @override
  _ChalengePageState createState() => _ChalengePageState();
}

class _ChalengePageState extends State<ChalengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: "O que o flutter faz em sua totalidade?",
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Pular",
                onTap: () {},
              )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Confirmar",
                onTap: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
