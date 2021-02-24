import 'package:flutter/cupertino.dart';

import '../../../domain/core/index.dart';

import '../../../helpers/index.dart';

class StyleText extends StatelessWidget with DisplayStates<Widget> {
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
    return atomText(data: data, fontSize: 30);
  }

  @override
  Widget subtitle(BuildContext context, Display display) {
    return atomText(data: data, fontSize: 18);
  }

  @override
  Widget title(BuildContext context, Display display) {
    return atomText(data: data, fontSize: 20);
  }

  Widget atomText({String data, double fontSize}) {
    return Text(
      data,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
    );
  }
}
