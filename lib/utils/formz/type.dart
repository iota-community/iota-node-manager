import 'package:formz/formz.dart';
import 'package:hornet_node/repository/moor/constants/node_types.dart';

enum TypeValidationError { empty, wrongType }

class Type extends FormzInput<NodeTypes?, TypeValidationError> {
  const Type.pure() : super.pure(NodeTypes.hornet);

  const Type.dirty({required NodeTypes value}) : super.dirty(value);

  @override
  TypeValidationError? validator(NodeTypes? value) {
    if (value == null) {
      return TypeValidationError.empty;
    }
    if (!NodeTypes.values.contains(value)) {
      return TypeValidationError.wrongType;
    } else {
      return null;
    }
  }
}
