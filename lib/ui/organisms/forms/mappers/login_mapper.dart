import 'package:flutter/material.dart';

import '../../../../helpers/index.dart';

class LoginMapper with AppStrings {
  static String labelButtonLogin() => AppStrings.login;
  static String labelButtonRegister() => AppStrings.register;
  static String requiredFields() => AppStrings.requiredFields;
  static String passwordNoteEqual() => AppStrings.passwordNotEqual;

  static Map<String, dynamic> _inputLogin() => {
        'hintText': AppStrings.hintLogin,
        'labelText': AppStrings.login,
        'keyboardType': TextInputType.streetAddress,
        'obscureText': false,
      };
  static Map<String, dynamic> _inputPassword() => {
        'hintText': AppStrings.hintPassword,
        'labelText': AppStrings.password,
        'keyboardType': TextInputType.number,
        'obscureText': true,
      };
  static Map<String, dynamic> _inutRepPassword() => {
        'hintText': AppStrings.hintRepPassword,
        'labelText': AppStrings.repPassword,
        'keyboardType': TextInputType.number,
        'obscureText': true,
      };

// funões prontas de strings para formulario
  static Map<String, dynamic> labelsToLogin() => _inputLogin();
  static Map<String, dynamic> labelsToPass() => _inputPassword();
  static Map<String, dynamic> labelsToRepPass() => _inutRepPassword();
}
