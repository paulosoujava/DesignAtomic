import 'package:atomic_design/design_atomic/atoms/app/atom_icon/atom_icon.dart';
import 'package:atomic_design/design_atomic/atoms/app/atom_text/atom_text.dart';
import 'package:flutter/material.dart';

class AppButton extends OutlineButton {
  final VoidCallback onPressed;
  final Color splashColor;
  final Color colorBorderSide;
  final double circular;
  final double size;

  final AtomIcon icon;
  final AtomText text;

  AppButton(this.onPressed, this.splashColor, this.colorBorderSide, this.circular, this.icon, this.text, this.size);

  Widget build(BuildContext context) {
    return OutlineButton.icon(
      onPressed: onPressed,
      highlightedBorderColor: highlightedBorderColor,
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
