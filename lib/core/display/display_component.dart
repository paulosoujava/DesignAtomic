import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

class DisplayComponent<T extends Widget> implements BaseDisplay<T> {
  @override
  T h1(BuildContext context, Display display) {
    debugPrint('$this does not implements Display.h1');
    return h1(context, display);
  }

  @override
  T subtitle(BuildContext context, Display display) {
    debugPrint('$this does not implements Display.subtitle');
    return subtitle(context, display);
  }

  @override
  T title(BuildContext context, Display display) {
    debugPrint('$this does not implements Display.title');
    return title(context, display);
  }

  T render(BuildContext context, Display display) {
    switch (display) {
      case Display.TITLE:
        return title(context, display);
        break;

      case Display.SUBTITLE:
        return subtitle(context, display);
        break;

      case Display.H1:
        return h1(context, display);
        break;

      default:
        throw "$display is not implemented for $this";
    }
  }
}
