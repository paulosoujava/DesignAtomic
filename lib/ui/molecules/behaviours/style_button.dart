import 'package:flutter/material.dart';

import '../../../domain/core/index.dart';

import '../../atoms/index.dart';

import '../../../helpers/index.dart';

class StyleButton extends StatelessWidget with BehaviourStates<Widget> {
  final Behaviour behaviour;
  final Function onPressed;
  final StyleText atomText;

  const StyleButton({this.behaviour, this.onPressed, this.atomText});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour childBehaviour) {
    return atomButton(onPressed: onPressed, atomText: atomText);
  }

  Widget atomButton({Function onPressed, StyleText atomText}) {
    return OutlinedButton(
      onPressed: onPressed,
      child: atomText,
    );
  }
}
