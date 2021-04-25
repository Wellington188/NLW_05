import 'package:DevQuiz/chalenge/widgets/question_indicator/question_indicator_widget.dart';
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
    );
  }
}
