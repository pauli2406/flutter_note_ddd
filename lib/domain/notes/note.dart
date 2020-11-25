import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:neverForget/domain/core/failures.dart';
import 'package:neverForget/domain/notes/todo_item.dart';
import 'package:neverForget/domain/notes/value_objects.dart';
import 'package:uuid/uuid.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    @required String id,
    @required NoteBody noteBody,
    @required Color noteColor,
    @required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: Uuid().v1(),
        noteBody: NoteBody(''),
        noteColor: NoteColor.predefinedColors[0],
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return noteBody.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
