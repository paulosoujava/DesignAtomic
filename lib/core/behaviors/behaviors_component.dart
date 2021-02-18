import 'package:atomic_design/core/base/base_component.dart';

import 'package:flutter/material.dart';

abstract class BehaviorsComponent<B, W> implements BaseComponent<W> {
  B whenRegular({BuildContext context}) {
    throw ("$this does not implements");
  }

  B whenLoading({BuildContext context}) {
    throw ("$this does not implements");
  }

  B whenError({BuildContext context}) {
    throw ("$this does not implements");
  }

  B whenDisabled({BuildContext context}) {
    throw ("$this does not implements");
  }

  B whenEmpty({BuildContext context}) {
    throw ("$this does not implements");
  }
}
