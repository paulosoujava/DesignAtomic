import 'dart:async';

import 'package:atomic_design/domain/helpers/domain_error.dart';
import 'package:atomic_design/domain/usecases/authentication.dart';
import 'package:atomic_design/presentation/protocols/protocols.dart';
import 'package:atomic_design/ui/helpers/errors/ui_error.dart';

import 'package:meta/meta.dart';
import 'login_presenter.dart';

class LoginState {
  String email;
  String password;
  UIError emailError;
  UIError passwordError;
  UIError mainError;
  bool isLoading = false;

  bool get isFormValid => emailError == null && passwordError == null && email != null && password != null;
}

class StreamLoginPresenter implements LoginPresenter {
  final Validation validation;
  final Authentication authentication;

  var _controller = StreamController<LoginState>.broadcast();
  var _state = LoginState();

  Stream<UIError> get emailErrorStream => _controller?.stream?.map((state) => state.emailError)?.distinct();
  Stream<UIError> get passwordErrorStream => _controller?.stream?.map((state) => state.passwordError)?.distinct();
  Stream<UIError> get mainErrorStream => _controller?.stream?.map((state) => state.mainError)?.distinct();
  Stream<bool> get isFormValidStream => _controller?.stream?.map((state) => state.isFormValid)?.distinct();
  Stream<bool> get isLoadingStream => _controller?.stream?.map((state) => state.isLoading)?.distinct();

  StreamLoginPresenter({@required this.validation, @required this.authentication});

  void _update() => _controller?.add(_state);

  String validateEmail(String email) {
    email = email;
    _state.emailError = _validateField('email');
    _update();
    return _state.emailError.description;
  }

  String validatePassword(String password) {
    password = password;
    _state.passwordError = _validateField('password');
    _update();
    return _state.passwordError.description;
  }

  UIError _validateField(String field) {
    final formData = {
      'email': _state.email,
      'password': _state.password,
    };
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;
      default:
        return null;
    }
  }

  void _validateForm() {
    // isFormValid = _state.emailError == null && _state.passwordError == null && _state.email != null && _state.password != null;
  }

  Future<void> auth() async {
    try {
      //final account = await authentication.auth(AuthenticationParams(email: _state.email, secret: _state.password));
      //await saveCurrentAccount.save(account);
      // navigateTo = '/surveys';
    } on DomainError catch (error) {
      switch (error) {
        case DomainError.invalidCredentials:
          UIError.invalidCredentials;
          break;
        default:
          UIError.unexpected;
          break;
      }
    }
  }

  void goToSignUp() {
    // navigateTo = '/signup';
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }
}
