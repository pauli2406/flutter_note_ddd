import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:neverForget/domain/notes/todo_item.dart';
import 'package:uuid/uuid.dart';

part 'todo_item_presentation_classes.freezed.dart';

class TodoListProperties {
  static const maxLength = 3;
}

class FormTodos extends ValueNotifier<KtList<TodoItem>> {
  FormTodos() : super(emptyList<TodoItem>());
}

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const TodoItemPrimitive._();

  const factory TodoItemPrimitive({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() =>
      TodoItemPrimitive(id: Uuid().v1(), name: '', done: false);

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
      id: todoItem.id,
      name: todoItem.name,
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: id,
      name: name,
      done: done,
    );
  }
}
