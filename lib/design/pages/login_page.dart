import 'package:atomic_design/design/atoms/app/atom_image/atom_image.dart';
import 'package:atomic_design/design/atoms/builders/builder_text.dart';
import 'package:atomic_design/design/mixins/strings/app_strings.dart';
import 'package:atomic_design/design/organisms/compositions/forms/login_composition.dart';
import 'package:atomic_design/design/templates/forms/t_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget with AppStrings {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TLogin.build(
        context: context,
        logo: AtomImage.build(path: 'assets/images/logo.png'),
        titleHeader: BuilderText.instance().h1(AppStrings.buttonLogin()).build(),
        containerLogin: FormComposition.instance().buildLogin(onPressed: () {}).build(),
      ),
    );
  }
}
