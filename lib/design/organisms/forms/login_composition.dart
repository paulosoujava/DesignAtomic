import 'package:flutter/material.dart';

import 'package:atomic_design/core/cores.dart';
import 'package:atomic_design/design/atoms/atoms.dart';
import 'package:atomic_design/design/molecules/molecules.dart';

class FormComposition implements BaseComponent<Widget> {
  static FormComposition _instance;

  List<Widget> _states = [];

  FormComposition._();

  static FormComposition instance() {
    _instance = FormComposition._();
    return _instance;
  }

  @override
  List<Widget> build() {
    return _states;
  }

  FormComposition buildInputsWithOneButton(
    String labelButton,
    List<Map<String, dynamic>> labelsToForm, {
    Function validator,
    Function onPressed,
    bool obscureText,
  }) {
    labelsToForm.forEach((label) {
      _states.add(SpaceInputSpace.build(
        label,
        validator: validator,
        obscureText: obscureText,
      ));
    });

    _states.add(AppButton.build(
      onPressed: onPressed,
      splashColor: Colors.blue,
      colorBorderSide: Colors.blue,
      circular: 20,
      text: AtomText.build(labelButton),
      icon: AtomIcon.build(icon: Icons.favorite, color: Colors.blue, size: 12),
    ));

    return this;
  }
}
