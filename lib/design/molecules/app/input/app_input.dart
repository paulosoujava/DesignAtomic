import 'package:atomic_design/design/atoms/app/atom_input/atom_input.dart';
import 'package:atomic_design/design/helpers/mixins/sizes/app_size.dart';

import 'package:flutter/cupertino.dart';

class SpaceInputSpace with AppSize {
  static Widget build({String hintText, String helperText, String labelText}) {
    return Column(
      children: [
        AppSize.space10H(),
        AtomInput.build(hintText: hintText, helperText: helperText, labelText: labelText),
        AppSize.space10H(),
      ],
    );
  }
}
