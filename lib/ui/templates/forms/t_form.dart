import 'package:atomic_design/main/factories/pages/login/login_page_factory.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';
import 'package:atomic_design/ui/atoms/protocolo.dart';

class TForm {
  static Widget build({
    BuildContext context,
    Widget widget,
    double bottomLeft = 50,
    double bottomRight = 400,
  }) {
    return Column(
      children: [
        Container(
          height: 330,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor,
            ]),
            boxShadow: [BoxShadow(offset: Offset(0, 1), spreadRadius: 0, blurRadius: 4, color: Colors.black)],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
          ),
          child: BuilderApp.instance()
              .renderOne(
                Factory.atom(
                  StyleImage(behaviour: constError),
                ),
              )
              .buildOne(),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: widget,
        ),
      ],
    );
  }
}
