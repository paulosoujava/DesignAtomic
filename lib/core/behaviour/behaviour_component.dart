import 'package:flutter/material.dart';

import './protocolo.dart';

abstract class BehaviourComponent<T> implements Base<T> {
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

  T render(BuildContext context, Behaviour behaviour) {
    switch (behaviour) {
      case Behaviour.REGULAR:
        return whenRegular(context, behaviour);
        break;

      case Behaviour.LOADING:
        return whenLoading(context, behaviour);
        break;

      case Behaviour.ERROR:
        return whenError(context, behaviour);
        break;

      case Behaviour.EMPTY:
        return whenEmpty(context, behaviour);
        break;

      case Behaviour.DISABLED:
        return whenDisabled(context, behaviour);
        break;

      case Behaviour.SUCCESS:
        return whenSuccess(context, behaviour);
        break;
      case Behaviour.INFO:
        return whenInfo(context, behaviour);
        break;
      default:
        throw "$behaviour is not implemented for $this";
    }
  }
}
