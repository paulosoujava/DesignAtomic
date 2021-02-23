import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class RequiredFieldValidation extends Comparable<RequiredFieldValidation> implements FieldValidation {
  final String field;

  List get props => [field];

  RequiredFieldValidation(this.field);

  ValidationError validate(Map input) => input[field]?.isNotEmpty == true ? null : ValidationError.requiredField;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RequiredFieldValidation && o.field == field;
  }

  @override
  int get hashCode => field.hashCode;

  @override
  int compareTo(RequiredFieldValidation other) {
    return this == other ? 1 : -1;
  }
}
