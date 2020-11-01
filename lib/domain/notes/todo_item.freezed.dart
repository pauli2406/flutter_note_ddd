// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoItemTearOff {
  const _$TodoItemTearOff();

// ignore: unused_element
  _TodoItem call(
      {@required UniqueId id,
      @required TodoName todoName,
      @required bool done}) {
    return _TodoItem(
      id: id,
      todoName: todoName,
      done: done,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoItem = _$TodoItemTearOff();

/// @nodoc
mixin _$TodoItem {
  UniqueId get id;
  TodoName get todoName;
  bool get done;

  $TodoItemCopyWith<TodoItem> get copyWith;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, TodoName todoName, bool done});
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res> implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  final TodoItem _value;
  // ignore: unused_field
  final $Res Function(TodoItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object todoName = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      todoName: todoName == freezed ? _value.todoName : todoName as TodoName,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$TodoItemCopyWith(_TodoItem value, $Res Function(_TodoItem) then) =
      __$TodoItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, TodoName todoName, bool done});
}

/// @nodoc
class __$TodoItemCopyWithImpl<$Res> extends _$TodoItemCopyWithImpl<$Res>
    implements _$TodoItemCopyWith<$Res> {
  __$TodoItemCopyWithImpl(_TodoItem _value, $Res Function(_TodoItem) _then)
      : super(_value, (v) => _then(v as _TodoItem));

  @override
  _TodoItem get _value => super._value as _TodoItem;

  @override
  $Res call({
    Object id = freezed,
    Object todoName = freezed,
    Object done = freezed,
  }) {
    return _then(_TodoItem(
      id: id == freezed ? _value.id : id as UniqueId,
      todoName: todoName == freezed ? _value.todoName : todoName as TodoName,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
class _$_TodoItem extends _TodoItem {
  const _$_TodoItem(
      {@required this.id, @required this.todoName, @required this.done})
      : assert(id != null),
        assert(todoName != null),
        assert(done != null),
        super._();

  @override
  final UniqueId id;
  @override
  final TodoName todoName;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItem(id: $id, todoName: $todoName, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.todoName, todoName) ||
                const DeepCollectionEquality()
                    .equals(other.todoName, todoName)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(todoName) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      __$TodoItemCopyWithImpl<_TodoItem>(this, _$identity);
}

abstract class _TodoItem extends TodoItem {
  const _TodoItem._() : super._();
  const factory _TodoItem(
      {@required UniqueId id,
      @required TodoName todoName,
      @required bool done}) = _$_TodoItem;

  @override
  UniqueId get id;
  @override
  TodoName get todoName;
  @override
  bool get done;
  @override
  _$TodoItemCopyWith<_TodoItem> get copyWith;
}
