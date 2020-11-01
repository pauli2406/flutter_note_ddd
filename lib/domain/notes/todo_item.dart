import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neverForget/domain/core/failures.dart';
import 'package:neverForget/domain/core/value_objects.dart';
import 'package:neverForget/domain/notes/value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required UniqueId id,
    @required TodoName todoName,
    @required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        todoName: TodoName(''),
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return todoName.failureOrUnit.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
