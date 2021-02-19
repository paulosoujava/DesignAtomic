import 'package:atomic_design/core/base/base_component.dart';
import 'package:atomic_design/design/atoms/app/atom_icon/atom_icon.dart';
import 'package:atomic_design/design/atoms/app/atom_text/atom_text.dart';
import 'package:atomic_design/design/mixins/strings/app_strings.dart';
import 'package:atomic_design/design/molecules/app/button/app_button.dart';

import 'package:atomic_design/design/molecules/app/input/app_input.dart';

import 'package:flutter/material.dart';

class FormComposition with AppStrings implements BaseComponent<Widget> {
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

  FormComposition buildLogin({Function onPressed}) {
    Map<String, String> labelsEmail = AppStrings.labesInputLogin();
    Map<String, String> labelsPass = AppStrings.labesInputPass();
    String labelButton = AppStrings.buttonLogin();

    _states.add(SpaceInputSpace.build(hintText: labelsEmail['hintText'], helperText: labelsEmail['helperText'], labelText: labelsEmail['labelText']));
    _states.add(SpaceInputSpace.build(hintText: labelsPass['hintText'], helperText: labelsPass['helperText'], labelText: labelsPass['labelText']));
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

class AppIcon {}