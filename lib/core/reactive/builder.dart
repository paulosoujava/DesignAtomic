import 'package:atomic_design/core/reactive/reactive.dart';
import 'package:flutter/material.dart';

class ReactiveBuilder<W> extends StatefulWidget {
  final Reactive<W> reactive;
  final Widget Function(BuildContext context, W value) builder;

  const ReactiveBuilder({this.reactive, this.builder});

  @override
  _ReactiveBuilderState<W> createState() => _ReactiveBuilderState<W>();
}

class _ReactiveBuilderState<W> extends State<ReactiveBuilder<W>> {
  W _actual;

  @override
  void initState() {
    _actual = widget.reactive.value;
    widget.reactive.listen((actual) {
      _actual = actual;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _actual);
  }
}
