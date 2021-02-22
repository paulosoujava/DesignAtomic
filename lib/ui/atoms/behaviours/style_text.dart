import 'package:flutter/cupertino.dart';

import 'package:atomic_design/core/protocolo.dart';

class StyleText extends StatelessWidget implements DisplayComponent<Widget> {
  final Display display;
  final String data;

  const StyleText({
    Key key,
    this.display,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, display);
  }

  @override
  Widget h1(BuildContext context, Display display) {
    return atomText(data: data);
  }

  @override
  Widget render(BuildContext context, Display display) {
    return atomText(data: data);
  }

  @override
  Widget subtitle(BuildContext context, Display display) {
    return atomText(data: data);
  }

  @override
  Widget title(BuildContext context, Display display) {
    return atomText(data: data);
  }

  Widget atomText({String data}) {
    return Text(
      data,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    );
  }
}
