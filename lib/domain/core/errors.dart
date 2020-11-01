import 'package:neverForget/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at a unrecoverable point. Terminating.";
    return Error.safeToString('$explanation Failure was: $valueFailure.');
  }
}
