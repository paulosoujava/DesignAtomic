import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

abstract class BaseDisplay<T extends Widget> {
  T title(BuildContext context, Display display) {
    throw ("$this does not implements");
  }

  T subtitle(BuildContext context, Display display) {
    throw ("$this does not implements");
  }

  T h1(BuildContext context, Display display) {
    throw ("$this does not implements");
  }
}
