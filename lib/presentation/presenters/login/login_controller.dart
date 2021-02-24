import 'dart:async';

import '../../../helpers/index.dart';

import 'login_presenter.dart';

class LoginState {
  String email;
  String password;
  String emailError;
  String passwordError;
  String mainError;
  bool isLoading = false;
  Behaviour beraviourEmail = Behaviour.REGULAR;
  Behaviour behaviourPassword = Behaviour.REGULAR;
  Behaviour behaviourButton = Behaviour.REGULAR;

  bool get isFormValid => emailError == null && passwordError == null && email != null && password != null;
}

class StreamLoginPresenter with StateBehaviour implements LoginPresenter {
  var _controller = StreamController<LoginState>.broadcast();
  var _state = LoginState();

  Stream<String> get emailErrorStream => _controller?.stream?.map((state) => state.emailError);
  Stream<String> get passwordErrorStream => _controller?.stream?.map((state) => state.passwordError)?.distinct();
  Stream<String> get mainErrorStream => _controller?.stream?.map((state) => state.mainError)?.distinct();
  Stream<bool> get isFormValidStream => _controller?.stream?.map((state) => state.isFormValid)?.distinct();
  Stream<bool> get isLoadingStream => _controller?.stream?.map((state) => state.isLoading)?.distinct();

  void _update() => _controller?.add(_state);

  String validateEmail(String email) {
    if (email.isEmpty) {
      _state.beraviourEmail = errorBehaviour;
      _state.emailError = 'email em branco';
      _update();
      return _state.emailError;
    }
    if (email.length >= 3 && email.contains('@') && email.contains('.')) {
      _state.beraviourEmail = regularBehaviour;
      _state.emailError = null;
      _update();
      return null;
    }

    _state.beraviourEmail = errorBehaviour;
    _state.emailError = 'email invalido';
    _update();
    return _state.emailError;
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      _update();
      _state.behaviourPassword = errorBehaviour;
      return _state.passwordError = 'senha em branco';
    }
    if (password.length >= 5) {
      _update();
      _state.behaviourPassword = regularBehaviour;
      return _state.passwordError = null;
    }
    _update();
    _state.behaviourPassword = errorBehaviour;
    return _state.passwordError = 'senha invlaido';
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }

  @override
  Future<void> auth() {
    _state.isLoading = true;
    _state.behaviourButton = loadingBehaviour;
    _state.beraviourEmail = disabledBehaviour;
    _state.emailError = '';

    _state.behaviourPassword = disabledBehaviour;
    _state.passwordError = '';
    _update();
    Future.delayed(const Duration(seconds: 6), () {
      _state.isLoading = false;
      _state.behaviourButton = regularBehaviour;
      _state.beraviourEmail = regularBehaviour;
      _state.emailError = null;

      _state.behaviourPassword = regularBehaviour;
      _state.passwordError = null;
      _update();
    });
    //return null;
  }

  @override
  Behaviour get emailBehaviour => _state.beraviourEmail;

  @override
  Behaviour get buttonBehaviour => _state.behaviourButton;

  @override
  Behaviour get passwordBehaviour => _state.behaviourPassword;
}
