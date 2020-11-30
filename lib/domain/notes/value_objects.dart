import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:neverForget/domain/core/failures.dart';
import 'package:neverForget/domain/core/value_objects.dart';
import 'package:neverForget/domain/core/value_validators.dart';

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
