import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:neverForget/domain/core/failures/auth_failures.dart';
import 'package:neverForget/domain/core/failures/notes_failures.dart';


part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.notes(NoteValueFailure<T> f) = _Notes<T>;
}

