import 'package:flutter/material.dart';

class AtomText {
  static Widget build(String data, {TextAlign textAlign, TextOverflow overflow, TextStyle style, int maxLines}) {
    return Text(
      data,
      textAlign: textAlign,
      overflow: overflow,
      style: style,
      maxLines: maxLines,
    );
  }
}
