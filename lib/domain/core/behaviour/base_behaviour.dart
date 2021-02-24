import 'package:flutter/material.dart';

import '../../../helpers/index.dart';

abstract class Base<T extends Widget> {
  /// Renderiza o componente baseado no S atual
  T render(BuildContext context, Behaviour behaviour);
}
