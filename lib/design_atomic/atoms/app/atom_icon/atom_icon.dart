import 'package:flutter/material.dart';

class AtomIcon extends Icon {
  final IconData icon;
  final Color color;
  final double size;

  AtomIcon(this.icon, this.color, this.size) : super(null);

  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
