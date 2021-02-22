import 'package:flutter/material.dart';

import 'package:atomic_design/presenters/protocolo.dart';
import 'package:atomic_design/ui/templates/protocolo.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Login Page'),
        ),
        body: GestureDetector(
          onTap: () {
            final currentFocus = FocusScope.of(context);
            if (currentFocus.hasFocus) {
              currentFocus.unfocus();
            }
          },
          child: SafeArea(
              child: SingleChildScrollView(
            child: Container(
              child: TForm.build(
                context: context,
              ),
            ),
          )),
        ));
  }
}
