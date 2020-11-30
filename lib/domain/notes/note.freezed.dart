// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

// ignore: unused_element
  _Note call(
      {@required String id,
      @required String noteBody,
      @required Color noteColor,
      @required KtList<TodoItem> todos}) {
    return _Note(
      id: id,
      noteBody: noteBody,
      noteColor: noteColor,
      todos: todos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  String get id;
  String get noteBody;
  Color get noteColor;
  KtList<TodoItem> get todos;

  $NoteCopyWith<Note> get copyWith;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {String id, String noteBody, Color noteColor, KtList<TodoItem> todos});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object id = freezed,
    Object noteBody = freezed,
    Object noteColor = freezed,
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      noteBody: noteBody == freezed ? _value.noteBody : noteBody as String,
      noteColor: noteColor == freezed ? _value.noteColor : noteColor as Color,
      todos: todos == freezed ? _value.todos : todos as KtList<TodoItem>,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String noteBody, Color noteColor, KtList<TodoItem> todos});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object id = freezed,
    Object noteBody = freezed,
    Object noteColor = freezed,
    Object todos = freezed,
  }) {
    return _then(_Note(
      id: id == freezed ? _value.id : id as String,
      noteBody: noteBody == freezed ? _value.noteBody : noteBody as String,
      noteColor: noteColor == freezed ? _value.noteColor : noteColor as Color,
      todos: todos == freezed ? _value.todos : todos as KtList<TodoItem>,
    ));
  }
}

/// @nodoc
class _$_Note extends _Note {
  const _$_Note(
      {@required this.id,
      @required this.noteBody,
      @required this.noteColor,
      @required this.todos})
      : assert(id != null),
        assert(noteBody != null),
        assert(noteColor != null),
        assert(todos != null),
        super._();

  @override
  final String id;
  @override
  final String noteBody;
  @override
  final Color noteColor;
  @override
  final KtList<TodoItem> todos;

  @override
  String toString() {
    return 'Note(id: $id, noteBody: $noteBody, noteColor: $noteColor, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.noteBody, noteBody) ||
                const DeepCollectionEquality()
                    .equals(other.noteBody, noteBody)) &&
            (identical(other.noteColor, noteColor) ||
                const DeepCollectionEquality()
                    .equals(other.noteColor, noteColor)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(noteBody) ^
      const DeepCollectionEquality().hash(noteColor) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const _Note._() : super._();
  const factory _Note(
      {@required String id,
      @required String noteBody,
      @required Color noteColor,
      @required KtList<TodoItem> todos}) = _$_Note;

  @override
  String get id;
  @override
  String get noteBody;
  @override
  Color get noteColor;
  @override
  KtList<TodoItem> get todos;
  @override
  _$NoteCopyWith<_Note> get copyWith;
}
