import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neverForget/domain/core/failures.dart';
import 'package:neverForget/domain/notes/value_objects.dart';
import 'package:uuid/uuid.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required String id,
    @required TodoName todoName,
    @required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: Uuid().v1(),
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
