import 'package:atomic_design/core/behaviors/behaviors_component.dart';
import 'package:atomic_design/design/atoms/app/atom_input/atom_input.dart';
import 'package:flutter/material.dart';

class BuilderInput implements BehaviorsComponent<BuilderInput, Widget> {
  static BuilderInput _instance;

  List<Widget> _states = [];

  BuilderInput._();

  static BuilderInput instance() {
    _instance = BuilderInput._();
    return _instance;
  }

  @override
  List<Widget> build() {
    return _states;
  }

  @override
  BuilderInput whenDisabled({BuildContext context, String hintText, String helperText, String labelText}) {
    _states.add(AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText));
    return this;
  }

  @override
  BuilderInput whenEmpty({BuildContext context, String hintText, String helperText, String labelText}) {
    _states.add(AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText));
    return this;
  }

  @override
  BuilderInput whenError({BuildContext context, String hintText, String helperText, String labelText}) {
    _states.add(AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText));
    return this;
  }

  @override
  BuilderInput whenLoading({BuildContext context, String hintText, String helperText, String labelText}) {
    _states.add(AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText));
    return this;
  }

  @override
  BuilderInput whenRegular({BuildContext context, String hintText, String helperText, String labelText}) {
    _states.add(AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText));
    return this;
  }
}
