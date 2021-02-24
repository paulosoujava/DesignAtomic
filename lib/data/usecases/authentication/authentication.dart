import '../../../domain/index.dart';

class RemoteAuthentication implements Authentication {
  @override
  Future<AccountEntity> auth(AuthenticationParams params) {
    throw UnimplementedError();
  }
}
