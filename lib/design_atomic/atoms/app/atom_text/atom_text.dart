import 'package:flutter/material.dart';

class AtomText extends Text {
  final TextAlign textAlign;
  final TextOverflow overflow;
  final TextStyle style;
  final int maxLines;

  /// The [data] parameter must not be null.
  AtomText({String data, this.textAlign, this.overflow, this.style, this.maxLines}) : super(data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      overflow: overflow,
      style: style,
      maxLines: maxLines,
    );
  }
}
