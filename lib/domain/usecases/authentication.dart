import 'package:meta/meta.dart';

import '../index.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams extends Comparable<AuthenticationParams> {
  final String email;
  final String password;

  AuthenticationParams({@required this.email, @required this.password});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthenticationParams && o.email == email && o.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;

  @override
  int compareTo(AuthenticationParams other) {
    return this == other ? 1 : -1;
  }
}
