import 'package:flutter/material.dart';

import 'package:atomic_design/core/behaviors/behaviors_component.dart';
import 'package:atomic_design/design_atomic/atoms/app/atom_icon/atom_icon.dart';
import 'package:atomic_design/design_atomic/atoms/app/atom_text/atom_text.dart';
import 'package:atomic_design/design_atomic/molecules/molecule_button/app_button.dart';

class BuilderButton implements BehaviorsComponent<BuilderButton, AppButton> {
  static BuilderButton _instance;

  List<AppButton> _statesMolecule = [];

  BuilderButton._();

  static BuilderButton instance() {
    _instance = BuilderButton._();
    return _instance;
  }

  @override
  List<AppButton> build() {
    return _statesMolecule;
  }

  @override
  BuilderButton whenDisabled(BuildContext context, {String data}) {
    _statesMolecule.add(AppButton(
        null,
        Colors.red,
        Colors.red,
        20,
        AtomIcon(
          Icons.favorite,
          Colors.pink,
          24.0,
        ),
        AtomText(data: data),
        20));
    return this;
  }

  @override
  BuilderButton whenEmpty(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  BuilderButton whenError(BuildContext context, {String data, Function onPress}) {
    _statesMolecule.add(AppButton(
        onPress,
        Colors.red,
        Colors.red,
        20,
        AtomIcon(
          Icons.error,
          Colors.pink,
          24.0,
        ),
        AtomText(data: data),
        20));
    return this;
  }

  @override
  BuilderButton whenLoading(BuildContext context, {String data, Function onPress}) {
    _statesMolecule.add(AppButton(
        onPress,
        Colors.red,
        Colors.red,
        20,
        AtomIcon(
          Icons.favorite,
          Colors.pink,
          24.0,
        ),
        AtomText(data: data),
        20));
    return this;
  }

  @override
  BuilderButton whenRegular(BuildContext context, {String data, Function onPress}) {
    _statesMolecule.add(AppButton(
        onPress,
        Colors.black,
        Colors.blue,
        20,
        AtomIcon(
          Icons.add,
          Colors.pink,
          24.0,
        ),
        AtomText(data: data),
        20));
    return this;
  }
}
