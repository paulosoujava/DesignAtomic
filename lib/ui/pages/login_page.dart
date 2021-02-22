import 'package:flutter/material.dart';

import 'package:atomic_design/core/protocolo.dart';
import 'package:atomic_design/presenters/protocolo.dart';
import 'package:atomic_design/ui/templates/protocolo.dart';
import 'package:atomic_design/ui/helpers/protocolo.dart';
import '../atoms/protocolo.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
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
                _formKey,
                context: context,
                logo: BuilderApp.instance().renderOne(Factory.atom(StyleImage(behaviour: Behaviour.ERROR))).buildOne(),
                titleHeader: BuilderApp.instance()
                    .renderOne(
                      Factory.atom(
                        StyleText(display: Display.TITLE, data: 'Register'),
                      ),
                    )
                    .buildOne(),
                containerLogin: BuilderApp.instance()
                    .renderList(
                      Factory.atom(StyleInput(
                        behaviour: Behaviour.ERROR,
                        mapper: LoginMapper.labelsToLogin(),
                      )),
                    )
                    .renderList(
                      Factory.atom(
                        StyleInput(
                          behaviour: Behaviour.REGULAR,
                          mapper: LoginMapper.labelsToPass(),
                        ),
                      ),
                    )
                    .renderList(
                      Factory.atom(StyleInput(
                        behaviour: Behaviour.REGULAR,
                        mapper: LoginMapper.labelsToRepPass(),
                      )),
                    )
                    .buildList(),
              ),
            ),
          )),
        ));
  }
}
