import '../../../helpers/index.dart';

abstract class LoginPresenter {
  Stream<String> get emailErrorStream;
  Stream<String> get passwordErrorStream;
  Stream<String> get mainErrorStream;
  Stream<bool> get isFormValidStream;
  Stream<bool> get isLoadingStream;

  String validateEmail(String email);
  String validatePassword(String password);

  Behaviour get emailBehaviour;
  Behaviour get passwordBehaviour;
  Behaviour get buttonBehaviour;

  Future<void> auth();
  void dispose();
}
