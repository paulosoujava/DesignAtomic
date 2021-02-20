import 'package:flutter/material.dart';

class AtomImage {
  static Widget build({String path}) {
    return Image(image: AssetImage(path));
  }
}
