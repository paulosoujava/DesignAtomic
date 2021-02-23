import 'package:meta/meta.dart';

import '../entities/entities.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams {
  final String email;
  final String secret;

  List get props => [email, secret];

  AuthenticationParams({@required this.email, @required this.secret});
}