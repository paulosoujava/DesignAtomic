import 'package:atomic_design/core/reactive/protocolo.dart';
import 'package:atomic_design/ui/helpers/protocolo.dart';

class LoginState {
  String login;
  String passsword;
  String errorLogin;
  String errorPassword;
}

class LoginController extends Reactive<LoginState> {
  static var _state = LoginState();

  LoginController() : super(state);

  String isEmpty(String value) {
    if (value.isEmpty) {
      return LoginMapper.requiredFields();
    }
    return null;
  }

  String onChanged(String data) {}

  static LoginState get state => _state;
}
