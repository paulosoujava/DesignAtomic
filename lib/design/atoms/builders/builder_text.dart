import 'package:flutter/material.dart';

import '../atoms.dart';

class BuilderText implements DisplayComponent<BuilderText, Widget> {
  static BuilderText _instance;

  List<Widget> _statesAtom = [];

  BuilderText._();

  static BuilderText instance() {
    _instance = BuilderText._();
    return _instance;
  }

  @override
  BuilderText h1(String data, {BuildContext context}) {
    _statesAtom.add(AtomText.build(data));
    return this;
  }

  @override
  BuilderText h2(String data, {BuildContext context}) {
    _statesAtom.add(AtomText.build(
      data,
      style: Theme.of(context).textTheme.headline4,
    ));
    return this;
  }

  @override
  List<Widget> build() {
    return _statesAtom;
  }
}
