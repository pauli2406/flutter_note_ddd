// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _Auth<T> auth<T>(AuthValueFailure<T> f) {
    return _Auth<T>(
      f,
    );
  }

// ignore: unused_element
  _Notes<T> notes<T>(NoteValueFailure<T> f) {
    return _Notes<T>(
      f,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> f),
    @required Result notes(NoteValueFailure<T> f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> f),
    Result notes(NoteValueFailure<T> f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> f});

  $AuthValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Auth<T>(
      f == freezed ? _value.f : f as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Auth<T> with DiagnosticableTreeMixin implements _Auth<T> {
  const _$_Auth(this.f) : assert(f != null);

  @override
  final AuthValueFailure<T> f;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.auth(f: $f)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.auth'))
      ..add(DiagnosticsProperty('f', f));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> f),
    @required Result notes(NoteValueFailure<T> f),
  }) {
    assert(auth != null);
    assert(notes != null);
    return auth(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> f),
    Result notes(NoteValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  }) {
    assert(auth != null);
    assert(notes != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthValueFailure<T> f) = _$_Auth<T>;

  AuthValueFailure<T> get f;
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

/// @nodoc
abstract class _$NotesCopyWith<T, $Res> {
  factory _$NotesCopyWith(_Notes<T> value, $Res Function(_Notes<T>) then) =
      __$NotesCopyWithImpl<T, $Res>;
  $Res call({NoteValueFailure<T> f});

  $NoteValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$NotesCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$NotesCopyWith<T, $Res> {
  __$NotesCopyWithImpl(_Notes<T> _value, $Res Function(_Notes<T>) _then)
      : super(_value, (v) => _then(v as _Notes<T>));

  @override
  _Notes<T> get _value => super._value as _Notes<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Notes<T>(
      f == freezed ? _value.f : f as NoteValueFailure<T>,
    ));
  }

  @override
  $NoteValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $NoteValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Notes<T> with DiagnosticableTreeMixin implements _Notes<T> {
  const _$_Notes(this.f) : assert(f != null);

  @override
  final NoteValueFailure<T> f;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notes(f: $f)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notes'))
      ..add(DiagnosticsProperty('f', f));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notes<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$NotesCopyWith<T, _Notes<T>> get copyWith =>
      __$NotesCopyWithImpl<T, _Notes<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> f),
    @required Result notes(NoteValueFailure<T> f),
  }) {
    assert(auth != null);
    assert(notes != null);
    return notes(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> f),
    Result notes(NoteValueFailure<T> f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notes != null) {
      return notes(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  }) {
    assert(auth != null);
    assert(notes != null);
    return notes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes<T> implements ValueFailure<T> {
  const factory _Notes(NoteValueFailure<T> f) = _$_Notes<T>;

  NoteValueFailure<T> get f;
  _$NotesCopyWith<T, _Notes<T>> get copyWith;
}
