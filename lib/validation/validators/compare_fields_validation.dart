import 'package:meta/meta.dart';

import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class CompareFieldsValidation extends Comparable<CompareFieldsValidation> implements FieldValidation {
  final String field;
  final String fieldToCompare;

  List get props => [field, fieldToCompare];

  CompareFieldsValidation({@required this.field, @required this.fieldToCompare});

  ValidationError validate(Map input) => input[field] != null && input[fieldToCompare] != null && input[field] != input[fieldToCompare] ? ValidationError.invalidField : null;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CompareFieldsValidation && o.field == field && o.fieldToCompare == fieldToCompare;
  }

  @override
  int get hashCode => field.hashCode ^ fieldToCompare.hashCode;

  @override
  int compareTo(FieldValidation other) {
    return this == other ? 1 : -1;
  }
}
