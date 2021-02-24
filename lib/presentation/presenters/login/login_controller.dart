import 'dart:async';

import 'login_presenter.dart';

class LoginState {
  String email;
  String password;
  String emailError;
  String passwordError;
  String mainError;
  bool isLoading = false;

  bool get isFormValid => emailError == null && passwordError == null && email != null && password != null;
}

class StreamLoginPresenter implements LoginPresenter {
  var _controller = StreamController<LoginState>.broadcast();
  var _state = LoginState();

  Stream<String> get emailErrorStream => _controller?.stream?.map((state) => state.emailError)?.distinct();
  Stream<String> get passwordErrorStream => _controller?.stream?.map((state) => state.passwordError)?.distinct();
  Stream<String> get mainErrorStream => _controller?.stream?.map((state) => state.mainError)?.distinct();
  Stream<bool> get isFormValidStream => _controller?.stream?.map((state) => state.isFormValid)?.distinct();
  Stream<bool> get isLoadingStream => _controller?.stream?.map((state) => state.isLoading)?.distinct();

  void _update() => _controller?.add(_state);

  String validateEmail(String email) {
    return _state.emailError;
  }

  String validatePassword(String password) {
    return _state.passwordError;
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }

  @override
  Future<void> auth() {}
}
