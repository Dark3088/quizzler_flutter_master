import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

onAlertWithStylePressed(
  BuildContext context,
  Function onRestartQuiz,
  Function onCloseApp,
) {
  // Reusable alert style
  var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.red,
      ),
      constraints: BoxConstraints.expand(width: 300),
      //First to chars "55" represents transparency of color
      overlayColor: Color(0x55000000),
      alertElevation: 0,
      alertAlignment: Alignment.topCenter);

  // Alert dialog using custom alert style
  Alert(
    context: context,
    style: alertStyle,
    type: AlertType.success,
    title: "You\'ve finished the Quiz!",
    desc: "Would you like to take it again?",
    buttons: [
      DialogButton(
        child: Text(
          "NO",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () async {
          debugPrint('Close the App');
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
          // Restart Quiz
        },
        color: Colors.blue,
        radius: BorderRadius.circular(0.0),
      ),
    ],
  ).show();
}
