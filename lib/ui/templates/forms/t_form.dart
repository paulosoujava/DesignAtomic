import 'package:flutter/material.dart';

class TForm {
  static Widget build(
    Key key, {
    BuildContext context,
    double bottomLeft = 50,
    double bottomRight = 400,
    Widget logo,
    Widget titleHeader,
    List<Widget> containerLogin,
  }) {
    return Form(
      key: key,
      child: Column(
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
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(bottomLeft), bottomRight: Radius.circular(bottomRight))),
            child: logo,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  child: titleHeader,
                  alignment: Alignment.centerRight,
                ),
                ...containerLogin,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
