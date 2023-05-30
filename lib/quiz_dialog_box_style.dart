// Reusable alert style
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

final successBoxStyle = AlertStyle(
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
  titleStyle: TextStyle(color: Colors.red),
  constraints: BoxConstraints.expand(width: 300),
  //First to chars "55" represents transparency of color
  overlayColor: Color(0x55000000),
  alertElevation: 0,
  alertAlignment: Alignment.center,
);
