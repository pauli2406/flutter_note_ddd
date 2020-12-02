import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:neverForget/domain/notes/todo_item.dart';
import 'package:neverForget/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:provider/provider.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItem> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;

  set formTodos(KtList<TodoItem> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
