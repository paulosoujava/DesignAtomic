import '../index.dart';

enum UIError { requiredField, invalidField, unexpected, invalidCredentials, emailInUse }

extension UIErrorExtension on UIError {
  String get description {
    switch (this) {
      case UIError.requiredField:
        return AppStrings.requiredField;
      case UIError.invalidField:
        return AppStrings.invalidField;
      case UIError.invalidCredentials:
        return AppStrings.invalidCredentials;
      case UIError.emailInUse:
        return AppStrings.emailInUse;
      default:
        return AppStrings.requiredField;
    }
  }
}
