import 'package:flutter/material.dart';
import 'package:quizzler/quiz_dialog_box_style.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

onAlertWithStylePressed(
  BuildContext context,
  Function onRestartQuiz,
  Function onCloseApp,
) {
  Alert(
    context: context,
    style: successBoxStyle,
    type: AlertType.success,
    title: "You\'ve finished the Quiz!",
    desc: "Would you like to take it again?",
    buttons: [
      DialogButton(
        child: Text(
          "NO",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
          onCloseApp();
        },
        color: Colors.red,
        radius: BorderRadius.circular(0.0),
      ),
      DialogButton(
          child: Text(
            "YES",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            onRestartQuiz();
            Navigator.pop(context);
          },
          color: Colors.blue,
          radius: BorderRadius.circular(0.0)),
    ],
  ).show();
}
