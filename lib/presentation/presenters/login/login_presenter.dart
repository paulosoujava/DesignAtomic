import 'package:atomic_design/ui/helpers/errors/ui_error.dart';

abstract class LoginPresenter {
  Stream<UIError> get emailErrorStream;
  Stream<UIError> get passwordErrorStream;
  Stream<UIError> get mainErrorStream;
  Stream<bool> get isFormValidStream;
  Stream<bool> get isLoadingStream;

  String validateEmail(String email);
  String validatePassword(String password);

  Future<void> auth();
  void dispose();
}
