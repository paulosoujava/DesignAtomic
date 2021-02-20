import 'package:flutter/material.dart';

import 'package:atomic_design/design/atoms/atoms.dart';
import 'package:atomic_design/design/organisms/organisms.dart';
import 'package:atomic_design/design/helpers/helpers.dart';
import 'package:atomic_design/design/templates/templates.dart';
import 'package:atomic_design/design/pages/pages.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
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
                logo: AtomImage.build(path: 'assets/images/logo.png'),
                titleHeader: BuilderText.instance()
                    .h1(
                      LoginMapperString.labelButtonLogin(),
                    )
                    .build(),
                containerLogin: FormComposition.instance().buildInputsWithOneButton(
                  LoginMapperString.labelButtonLogin(),
                  LoginMapperString.labelsToLogin(),
                  validator: (value) {
                    if (value.isEmpty) {
                      return LoginMapperString.requiredFields();
                    }
                  },
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    }
                  },
                ).build(),
              ),
            ),
          )),
        ));
  }
}
