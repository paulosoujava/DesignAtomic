import 'package:atomic_design/core/base/base_component.dart';
import 'package:atomic_design/design/atoms/app/atom_icon/atom_icon.dart';
import 'package:atomic_design/design/atoms/app/atom_text/atom_text.dart';
import 'package:atomic_design/design/molecules/app/button/app_button.dart';
import 'package:atomic_design/design/molecules/app/input/app_input.dart';

import 'package:flutter/material.dart';

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
    List<Map<String, String>> labelsToForm, {
    Function onPressed,
  }) {
    labelsToForm.forEach((label) {
      _states.add(
        SpaceInputSpace.build(
          hintText: label['hintText'],
          helperText: label['helperText'],
          labelText: label['labelText'],
        ),
      );
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
