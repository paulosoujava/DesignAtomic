import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

class StyleInput extends StatelessWidget with BehaviourComponent<Widget> {
  final Behaviour behaviour;
  final Map<String, dynamic> mapper;
  final Function validator;
  final Function onChanged;
  final Widget icon;
  final String errorText;

  const StyleInput({
    this.behaviour,
    this.mapper,
    this.validator,
    this.icon,
    this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return atomInput(
        mapper: mapper,
        errorText: errorText,
        validator: validator,
        onChanged: onChanged,
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 30.0,
        ));
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return atomInput(
      mapper: mapper,
      validator: validator,
      onChanged: onChanged,
    );
  }
}

//ATOM
Widget atomInput({
  errorText,
  mapper,
  validator,
  onChanged,
  icon,
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
        icon: icon,
        helperText: mapper['helperText'],
        hintText: mapper['hintText'],
        labelText: mapper['labelText'],
        errorText: errorText,
        errorStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.red,
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.blue,
        )),
  );
}
