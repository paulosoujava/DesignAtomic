import 'package:atomic_design/main/factories/factories.dart';
import 'package:atomic_design/ui/helpers/mixins/keyboard/keyboard_manager.dart';
import 'package:atomic_design/ui/templates/protocolo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget with KeyboardManager {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => hideKeyboard(context),
        child: SingleChildScrollView(
          child: TForm.build(
            context: context,
            widget: makeLoginPage(),
          ),
        ),
      ),
    );
  }
}
