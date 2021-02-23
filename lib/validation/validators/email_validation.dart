import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class EmailValidation extends Comparable<EmailValidation> implements FieldValidation {
  final String field;

  EmailValidation(this.field);

  ValidationError validate(Map input) {
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is EmailValidation && o.field == field;
  }

  @override
  int get hashCode => field.hashCode;

  @override
  int compareTo(EmailValidation other) {
    return this == other ? 1 : -1;
  }
}
