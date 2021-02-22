import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';

class BuilderApp<W extends Widget> implements BaseBuilder<W> {
  static BuilderApp _instance;
  @override
  W oneWidget;

  @override
  List<W> states = [];

  BuilderApp._();

  static BuilderApp instance() {
    _instance = BuilderApp._();
    return _instance;
  }

  @override
  List<W> buildList() {
    return states;
  }

  @override
  renderList(W) {
    states.add(W);
    return this;
  }

  @override
  W buildOne() {
    return oneWidget;
  }

  @override
  renderOne(W) {
    oneWidget = W;
    return this;
  }
}
