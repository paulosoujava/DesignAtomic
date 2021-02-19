import 'package:flutter/material.dart';

class TLogin {
  ///!Image(image: AssetImage('assets/images/logo.png'))

  static Widget build({
    BuildContext context,
    Widget logo,
    List<Widget> titleHeader,
    List<Widget> containerLogin,
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
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(400))),
          child: logo,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [...titleHeader, ...containerLogin],
          ),
        ),
      ],
    );
  }
}
