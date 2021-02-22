import 'package:atomic_design/core/reactive/protocolo.dart';
import 'package:atomic_design/ui/helpers/protocolo.dart';

class LoginState {
  String login;
  String passsword;
  String repPasssword;
  bool errorLogin;
  bool errorPassword;
}

class LoginController extends Reactive<LoginState> {
  static var _state = LoginState();
  bool errorLogin = false;
  LoginController() : super(state);

  String validateEmail(String value) {
    _state.login = value;
    return _validateEmpty(value);
  }

  String validatePassword(String value) {
    _state.passsword = value;
    if (_validateEmpty(value) == null) {
      errorLogin = false;
      return null;
    }

    errorLogin = true;
    return _validateEmpty(value);
  }

  String validateRepPassword(String value) {
    _state.repPasssword = value;
    return _validateEmpty(value) == null
        ? _state.passsword == value
            ? null
            : LoginMapper.passwordNoteEqual()
        : LoginMapper.requiredFields();
  }

  String _validateEmpty(String value) {
    if (value.isEmpty) {
      return LoginMapper.requiredFields();
    }
    return null;
  }

  static LoginState get state => _state;
}
