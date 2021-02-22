import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

abstract class Base<T> {
  T whenRegular(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.regular');
    return whenRegular(context, childBehaviour);
  }

  T whenLoading(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.loading');
    return whenRegular(context, childBehaviour);
  }

  T whenError(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.error');
    return whenRegular(context, childBehaviour);
  }

  T whenDisabled(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.disabled');
    return whenRegular(context, childBehaviour);
  }

  T whenEmpty(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.empty');
    return whenRegular(context, childBehaviour);
  }

  T whenSuccess(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.success');
    return whenRegular(context, childBehaviour);
  }

  T whenInfo(BuildContext context, Behaviour childBehaviour) {
    debugPrint('$this does not implements Behaviour.info');
    return whenRegular(context, childBehaviour);
  }

  /// Renderiza o componente baseado no behaviour atual
  T render(BuildContext context, Behaviour behaviour);
}
