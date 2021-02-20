import 'package:flutter/material.dart';

import 'package:atomic_design/design/atoms/atoms.dart';
import 'package:atomic_design/design/helpers/helpers.dart';
import 'package:atomic_design/design/organisms/organisms.dart';
import 'package:atomic_design/design/pages/pages.dart';
import 'package:atomic_design/design/templates/templates.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Register Page'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: TForm.build(
              _formKey,
              context: context,
              bottomRight: 40,
              bottomLeft: 400,
              logo: AtomImage.build(path: 'assets/images/dog.png'),
              titleHeader: BuilderText.instance()
                  .h1(
                    LoginMapperString.labelButtonLogin(),
                  )
                  .build(),
              containerLogin: FormComposition.instance().buildInputsWithOneButton(
                LoginMapperString.labelButtonLogin(),
                LoginMapperString.labelsToRegister(),
                validator: (value) {
                  if (value.isEmpty) {
                    return LoginMapperString.requiredFields();
                  }
                },
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.of(context).pop();
                  }
                },
              ).build(),
            ),
          ),
        )));
  }
}
