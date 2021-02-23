import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

class StyleImage extends StatelessWidget with BehaviourComponent<Widget> {
  final Behaviour behaviour;

  const StyleImage({this.behaviour});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return atomImage(
      path: 'logo'.png,
    );
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return atomImage(
      path: 'dog'.png,
    );
  }
}

//ATOM
Widget atomImage({path}) {
  return Image(image: AssetImage(path));
}
