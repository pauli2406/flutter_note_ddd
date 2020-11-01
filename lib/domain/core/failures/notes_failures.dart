import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_failures.freezed.dart';

@freezed
abstract class NoteValueFailure<T> with _$NoteValueFailure<T> {
  const factory NoteValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory NoteValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory NoteValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory NoteValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
}