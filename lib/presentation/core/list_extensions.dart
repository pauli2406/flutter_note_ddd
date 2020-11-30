import 'package:kt_dart/collection.dart';
import 'package:neverForget/domain/notes/todo_item.dart';

extension TodoListX on KtList<TodoItem> {
  bool isFull() {
    const maxLength = 3;
    return size == maxLength;
  }
}
