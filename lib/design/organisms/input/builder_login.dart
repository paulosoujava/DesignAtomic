import 'package:atomic_design/core/base/base_component.dart';

import 'package:atomic_design/design/molecules/input/app_input.dart';

import 'package:flutter/material.dart';

class BuilderLogin implements BaseComponent<Widget> {
  static BuilderLogin _instance;

  List<Widget> _states = [];

  BuilderLogin._();

  static BuilderLogin instance() {
    _instance = BuilderLogin._();
    return _instance;
  }

  @override
  List<Widget> build() {
    return _states;
  }

  BuilderLogin buildLogin(List<String> labels) {
    assert(labels != null && labels.length == 6);
    _states.add(SpaceInputSpace.build(hintText: labels[0], helperText: labels[1], labelText: labels[2]));
    _states.add(SpaceInputSpace.build(hintText: labels[3], helperText: labels[4], labelText: labels[5]));

    return this;
  }
}
