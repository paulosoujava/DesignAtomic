import 'package:atomic_design/design/atoms/app/atom_image/atom_image.dart';
import 'package:atomic_design/design/atoms/builders/builder_text.dart';

import 'package:atomic_design/design/mixins/strings/app_strings.dart';
import 'package:atomic_design/design/organisms/compositions/forms/login_composition.dart';
import 'package:atomic_design/design/pages/login_page.dart';
import 'package:atomic_design/design/templates/forms/t_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget with AppStrings {
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
              context: context,
              bottomRight: 40,
              bottomLeft: 400,
              logo: AtomImage.build(path: 'assets/images/dog.png'),
              titleHeader: BuilderText.instance().h1(AppStrings.buttonRegister()).build(),
              containerLogin: FormComposition.instance().buildRegister(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }).build(),
            ),
          ),
        )));
  }
}
