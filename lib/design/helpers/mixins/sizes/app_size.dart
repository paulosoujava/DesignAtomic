import 'package:flutter/material.dart';

mixin AppSize {
  static space10H() => _spaceh(10.0);
  static space10W() => _spaceW(10.0);

  static _spaceh(double h) => SizedBox(
        height: h,
      );
  static _spaceW(double w) => SizedBox(
        width: w,
      );
}
