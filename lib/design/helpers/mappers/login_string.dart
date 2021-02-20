import 'package:atomic_design/design/helpers/mixins/strings/app_strings.dart';

class LoginString with AppStrings {
  static String labelButtonLogin() => AppStrings.login;
  static String labelButtonRegister() => AppStrings.register;

  static Map<String, String> _inputLogin() => {
        'hintText': AppStrings.login,
        'helperText': AppStrings.login,
        'labelText': AppStrings.login,
      };
  static Map<String, String> _inputPassword() => {
        'hintText': AppStrings.login,
        'helperText': AppStrings.login,
        'labelText': AppStrings.login,
      };
  static Map<String, String> _inutRepPassword() => {
        'hintText': AppStrings.login,
        'helperText': AppStrings.login,
        'labelText': AppStrings.login,
      };

// funões prontas de strings para formulario
  static List<Map<String, String>> labelsToLogin() {
    return [_inputLogin(), _inputPassword()];
  }

  static List<Map<String, String>> labelsToRegister() {
    return [_inputLogin(), _inputPassword(), _inutRepPassword()];
  }
}
