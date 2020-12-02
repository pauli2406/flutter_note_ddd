import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neverForget/domain/core/failures.dart';
import 'package:neverForget/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';
import 'package:neverForget/domain/notes/note.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItem;

  static const maxLength = 30;

  factory TodoItem.empty() => TodoItem(
        id: Uuid().v1(),
        name: '',
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return validateMaxStringLength(name, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine)
        .failureOrUnit()
        .fold((f) => some(f), (_) => none());
  }
}
