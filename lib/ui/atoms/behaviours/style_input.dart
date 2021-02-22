import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

class StyleInput extends StatelessWidget with BehaviourComponent<Widget> {
  final Behaviour behaviour;
  final Map<String, dynamic> mapper;

  const StyleInput({Key key, this.behaviour, this.mapper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return atomInput(mapper: mapper);
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return atomInput(mapper: mapper);
  }
}

//ATOM
Widget atomInput({
  mapper,
  validator,
  onChanged,
}) {
  return TextFormField(
    keyboardType: mapper['keyboardType'],
    validator: validator,
    onChanged: onChanged,
    obscureText: mapper['obscureText'] ?? false,
    cursorColor: Colors.blue,
    cursorRadius: Radius.circular(6.0),
    cursorWidth: 1.0,
    decoration: InputDecoration(
        helperText: mapper['helperText'],
        hintText: mapper['hintText'],
        labelText: mapper['labelText'],
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.blue,
        )),
  );
}
