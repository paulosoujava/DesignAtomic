import 'package:flutter/material.dart';

import '../../domain/core/index.dart';

import '../../main/factories/index.dart';

import '../atoms/index.dart';

import '../templates/index..dart';

import '../../helpers/index.dart';
import '../helpers/index.dart';

class LoginPage extends StatelessWidget with KeyboardManager, StateBehaviour {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => hideKeyboard(context),
        child: SingleChildScrollView(
          child: TForm.build(
            context: context,
            header: BuilderApp.instance()
                .renderOne(
                  StyleImage(behaviour: errorBehaviour),
                )
                .buildOne(),
            widget: makeLoginPage(),
          ),
        ),
      ),
    );
  }
}
