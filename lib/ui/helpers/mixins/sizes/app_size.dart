import 'package:flutter/material.dart';

mixin AppSize {
  static Widget space10H() => _spaceh(10.0);
  static Widget space10W() => _spaceW(10.0);
  static Widget space20H() => _spaceh(20.0);
  static Widget space20W() => _spaceW(20.0);

  static Widget _spaceh(double h) => SizedBox(
        height: h,
      );
  static Widget _spaceW(double w) => SizedBox(
        width: w,
      );
}
