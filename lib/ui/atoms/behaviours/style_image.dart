import 'package:flutter/material.dart';

import '../../../domain/index.dart';

import '../../../helpers/index.dart';

class StyleImage extends StatelessWidget with BehaviourStates<Widget> {
  final Behaviour behaviour;

  const StyleImage({this.behaviour});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return _atomImage(
      path: 'logo'.png,
    );
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return _atomImage(
      path: 'dog'.png,
    );
  }
}

//ATOM
Widget _atomImage({path}) {
  return Image(image: AssetImage(path));
}
