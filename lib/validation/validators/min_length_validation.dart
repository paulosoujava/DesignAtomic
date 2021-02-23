import 'package:meta/meta.dart';

import '../../presentation/protocols/protocols.dart';
import '../protocols/protocols.dart';

class MinLengthValidation extends Comparable<MinLengthValidation> implements FieldValidation {
  final String field;
  final int size;

  List get props => [field, size];

  MinLengthValidation({@required this.field, @required this.size});

  ValidationError validate(Map input) => input[field] != null && input[field].length >= size ? null : ValidationError.invalidField;

  @override
  int compareTo(MinLengthValidation other) {
    return this == other ? 1 : -1;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MinLengthValidation && o.field == field && o.size == size;
  }

  @override
  int get hashCode => field.hashCode ^ size.hashCode;
}
