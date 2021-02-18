import 'package:flutter/material.dart';

class AtomIcon {
  static Widget build({IconData icon, Color color, double size}) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
