import 'package:flutter/material.dart';

class AtomInput {
  static Widget build({String hintText, String helperText, String labelText}) {
    return Container(
      child: TextField(
        cursorColor: Colors.blue,
        cursorRadius: Radius.circular(6.0),
        cursorWidth: 1.0,
        decoration: InputDecoration(
            helperText: helperText,
            hintText: hintText,
            labelText: labelText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.blue,
            )),
      ),
    );
  }
}
