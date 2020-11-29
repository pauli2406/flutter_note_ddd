import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:neverForget/domain/core/errors.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (f) => left(f),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  /// Throws [UnexpectedValueError] containing [ValueFailure]
  T getOrCrash() {
    // id = identity and is the same as using (r) => r
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }
}
