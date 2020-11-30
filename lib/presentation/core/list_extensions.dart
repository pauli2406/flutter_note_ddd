import 'package:kt_dart/collection.dart';
import 'package:neverForget/domain/notes/todo_item.dart';
import 'package:neverForget/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

extension TodoListX on KtList<TodoItem> {
  bool isFull() {
    const maxLength = TodoListProperties.maxLength;
    return size == maxLength;
  }
}
