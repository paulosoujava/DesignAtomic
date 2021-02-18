import 'package:atomic_design/core/base/base_component.dart';
import 'package:flutter/material.dart';

abstract class DisplayComponent<B, W> implements BaseComponent<W> {
  B h1(String data, {BuildContext context}) {
    throw ("$this does not implements Behaviour.h1");
  }

  B h2(String data, {BuildContext context}) {
    throw ("$this does not implements ");
  }
}
