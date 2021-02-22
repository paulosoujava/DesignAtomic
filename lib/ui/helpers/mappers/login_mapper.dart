import 'package:atomic_design/ui/helpers/mixins/strings/app_strings.dart';
import 'package:flutter/material.dart';

class LoginMapper with AppStrings {
  static String labelButtonLogin() => AppStrings.login;
  static String labelButtonRegister() => AppStrings.register;
  static String requiredFields() => AppStrings.requiredFields;
  static String passwordNoteEqual() => AppStrings.password_not_equal;

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
  static Map<String, dynamic> labelsToLogin() => _inputLogin();
  static Map<String, dynamic> labelsToPass() => _inputPassword();
  static Map<String, dynamic> labelsToRepPass() => _inutRepPassword();
}
