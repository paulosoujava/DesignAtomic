import 'package:meta/meta.dart' show required;

class AccountEntity extends Comparable<AccountEntity> {
  final String token;
  final String email;
  final String password;

  AccountEntity({@required this.token, this.email, this.password});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AccountEntity && o.token == token && o.email == email && o.password == password;
  }

  @override
  int get hashCode => token.hashCode ^ email.hashCode ^ password.hashCode;

  @override
  int compareTo(AccountEntity other) {
    return this == other ? 1 : -1;
  }
}
