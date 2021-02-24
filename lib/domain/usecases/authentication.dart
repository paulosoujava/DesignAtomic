import 'package:meta/meta.dart';

import '../index.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams extends Comparable<AuthenticationParams> {
  final String email;
  final String secret;

  List get props => [email, secret];

  AuthenticationParams({@required this.email, @required this.secret});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthenticationParams && o.email == email && o.secret == secret;
  }

  @override
  int get hashCode => email.hashCode ^ secret.hashCode;

  @override
  int compareTo(AuthenticationParams other) {
    return this == other ? 1 : -1;
  }
}
