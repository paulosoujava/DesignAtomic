import 'package:flutter/material.dart';

class TForm {
  static Widget build({
    BuildContext context,
    Widget widget,
    Widget header,
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
            child: header),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: widget,
        ),
      ],
    );
  }
}
