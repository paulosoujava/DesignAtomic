import 'package:flutter/material.dart';

import 'package:atomic_design/core/cores.dart';
import 'package:atomic_design/design/atoms/atoms.dart';
import 'package:atomic_design/design/molecules/molecules.dart';

class BuilderButton implements BehaviorsComponent<BuilderButton, Widget> {
  static BuilderButton _instance;

  List<Widget> _statesMolecule = [];

  BuilderButton._();

  static BuilderButton instance() {
    _instance = BuilderButton._();
    return _instance;
  }

  @override
  List<Widget> build() {
    return _statesMolecule;
  }

  @override
  BuilderButton whenDisabled({BuildContext context, String data}) {
    _statesMolecule.add(AppButton.build(
        onPressed: null,
        splashColor: Colors.red,
        colorBorderSide: Colors.red,
        circular: 20,
        size: 20,
        text: AtomText.build(data),
        icon: AtomIcon.build(
          icon: Icons.favorite,
          color: Colors.pink,
          size: 24.0,
        )));

    return this;
  }

  @override
  BuilderButton whenError({BuildContext context, String data, Function onPress}) {
    _statesMolecule.add(AppButton.build(
        onPressed: onPress,
        splashColor: Colors.red,
        colorBorderSide: Colors.red,
        circular: 20,
        size: 20,
        text: AtomText.build(data),
        icon: AtomIcon.build(
          icon: Icons.favorite,
          color: Colors.pink,
          size: 24.0,
        )));
    return this;
  }

  @override
  BuilderButton whenLoading({BuildContext context, String data, Function onPress}) {
    _statesMolecule.add(AppButton.build(
        onPressed: onPress,
        splashColor: Colors.red,
        colorBorderSide: Colors.red,
        circular: 20,
        size: 20,
        text: AtomText.build(data),
        icon: AtomIcon.build(
          icon: Icons.favorite,
          color: Colors.pink,
          size: 24.0,
        )));
    return this;
  }

  @override
  BuilderButton whenRegular({BuildContext context, String data, Function onPress}) {
    _statesMolecule.add(AppButton.build(
        onPressed: onPress,
        splashColor: Colors.red,
        colorBorderSide: Colors.red,
        circular: 20,
        size: 20,
        text: AtomText.build(data),
        icon: AtomIcon.build(
          icon: Icons.favorite,
          color: Colors.pink,
          size: 24.0,
        )));
    return this;
  }

  @override
  BuilderButton whenEmpty({BuildContext context}) {
    throw UnimplementedError();
  }
}
