import 'package:flutter/material.dart';

import 'package:atomic_design/design/atoms/atoms.dart';
import 'package:atomic_design/design/helpers/helpers.dart';

class SpaceInputSpace with AppSize {
  static Widget build(Map<String, dynamic> mapper, {Function validator, bool obscureText}) {
    return Column(
      children: [
        AppSize.space10H(),
        AtomInput.build(
          helperText: mapper['helperText'],
          hintText: mapper['hintText'],
          labelText: mapper['labelText'],
          keyboardType: mapper['keyboardType'],
          validator: validator,
          obscureText: mapper['obscureText'],
        ),
        AppSize.space10H(),
      ],
    );
  }
}
