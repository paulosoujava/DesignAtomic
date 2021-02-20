import 'package:atomic_design/design/helpers/mixins/strings/app_strings.dart';
import 'package:flutter/material.dart';

class LoginMapperString with AppStrings {
  static String labelButtonLogin() => AppStrings.login;
  static String labelButtonRegister() => AppStrings.register;
  static String requiredFields() => AppStrings.requiredFields;

  static Map<String, dynamic> _inputLogin() => {
        'hintText': AppStrings.hintLogin,
        'helperText': AppStrings.helpLogin,
        'labelText': AppStrings.login,
        'keyboardType': TextInputType.streetAddress,
        'obscureText': false,
      };
  static Map<String, dynamic> _inputPassword() => {
        'hintText': AppStrings.hintPassword,
        'helperText': AppStrings.helpPassword,
        'labelText': AppStrings.password,
        'keyboardType': TextInputType.number,
        'obscureText': true,
      };
  static Map<String, dynamic> _inutRepPassword() => {
        'hintText': AppStrings.hintRepPassword,
        'helperText': AppStrings.helpPassword,
        'labelText': AppStrings.repPassword,
        'keyboardType': TextInputType.number,
        'obscureText': true,
      };

// funões prontas de strings para formulario
  static List<Map<String, dynamic>> labelsToLogin() {
    return [_inputLogin(), _inputPassword()];
  }

  static List<Map<String, dynamic>> labelsToRegister() {
    return [_inputLogin(), _inputPassword(), _inutRepPassword()];
  }
}
