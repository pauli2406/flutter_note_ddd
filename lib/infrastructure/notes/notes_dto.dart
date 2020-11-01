import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neverForget/domain/core/value_objects.dart';
import 'package:neverForget/domain/notes/todo_item.dart';
import 'package:neverForget/domain/notes/value_objects.dart';

part 'notes_dto.freezed.dart';
part 'notes_dto.g.dart';

@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const TodoItemDto._();

  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrash(),
      name: todoItem.todoName.getOrCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain(TodoItemDto todoItemDto) {
    return TodoItem(
      id: UniqueId.fromUniqueString(todoItemDto.id),
      todoName: TodoName(todoItemDto.name),
      done: todoItemDto.done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}

@freezed
abstract class NoteDto implements _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    String id,
    @required String body,
    @required int color,
    @required List<TodoItemDto> todos
  }

  ) = _NoteDto;
}
