import 'package:flutter/material.dart';

import '../../../domain/index.dart';

import '../../../helpers/index.dart';

class StyleInput extends StatelessWidget with BehaviourStates<Widget> {
  final Behaviour behaviour;
  final Map<String, dynamic> mapper;
  final Function validator;
  final Function onChanged;
  final Widget icon;
  final String errorText;
  final enabled;

  const StyleInput({
    this.behaviour,
    this.mapper,
    this.validator,
    this.icon,
    this.onChanged,
    this.errorText,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return _atomInput(
        mapper: mapper,
        errorText: errorText,
        validator: validator,
        onChanged: onChanged,
        enabled: true,
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 30.0,
        ));
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return _atomInput(
      mapper: mapper,
      validator: validator,
      onChanged: onChanged,
      enabled: true,
    );
  }

  @override
  Widget whenDisabled(BuildContext context, Behaviour behaviour) {
    return _atomInput(
      mapper: mapper,
      validator: null,
      onChanged: null,
      enabled: false,
    );
  }
}

//ATOM
Widget _atomInput({
  errorText,
  mapper,
  validator,
  onChanged,
  icon,
  enabled,
}) {
  return TextFormField(
    enabled: enabled,
    keyboardType: mapper['keyboardType'],
    validator: validator,
    onChanged: onChanged,
    obscureText: mapper['obscureText'] ?? false,
    cursorColor: Colors.blue,
    cursorRadius: Radius.circular(6.0),
    cursorWidth: 1.0,
    decoration: InputDecoration(
        icon: icon,
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
