import 'package:flutter/material.dart';

abstract class BaseBuilder<W extends Widget> {
  List<W> states = [];
  W oneWidget;
  renderList(T);
  List<W> buildList();
  renderOne(T);
  W buildOne();
}
