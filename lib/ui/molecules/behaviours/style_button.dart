import 'package:flutter/material.dart';

import '../../../domain/index.dart';

import '../../atoms/index.dart';

import '../../../helpers/index.dart';

class StyleButton extends StatelessWidget with BehaviourStates<Widget>, StateDisplay {
  final Behaviour behaviour;
  final Function onPressed;
  final Widget atom;

  const StyleButton({this.behaviour, this.onPressed, this.atom});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour childBehaviour) {
    return _atomButton(
      onPressed: onPressed,
      atom: StyleText(display: titleDisplay, data: 'Register'),
    );
  }

  Widget whenLoading(BuildContext context, Behaviour childBehaviour) {
    return _atomButton(
      onPressed: null,
      atom: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
              width: 30.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                strokeWidth: 2.0,
              ),
            ),
            StyleText(display: subTitleDisplay, data: 'por favor aguarde...'),
          ],
        ),
      ),
    );
  }

  Widget _atomButton({Function onPressed, Widget atom}) {
    return OutlinedButton(
      onPressed: onPressed,
      child: atom,
    );
  }
}
