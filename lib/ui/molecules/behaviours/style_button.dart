import 'package:atomic_design/ui/atoms/protocolo.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design/core/behaviour/protocolo.dart';

class StyleButton extends StatelessWidget with BehaviourComponent<Widget> {
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
