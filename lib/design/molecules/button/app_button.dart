import 'package:flutter/material.dart';

class AppButton {
  static Widget build({
    VoidCallback onPressed,
    Color splashColor,
    Color colorBorderSide,
    double circular,
    double size,
    Widget icon,
    Widget text,
  }) {
    return OutlineButton.icon(
      onPressed: onPressed,
      splashColor: splashColor,
      borderSide: BorderSide(
        color: colorBorderSide,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circular),
      ),
      icon: icon,
      label: text,
    );
  }
}
