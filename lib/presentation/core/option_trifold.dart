import 'dart:core';

import 'package:dartz/dartz.dart';

extension OptionX on Option<Either> {
  void triFold<L, R>(
    Function() none,
    Function(L) left,
    Function(R) right,
  ) {
    (this as Option<Either<L, R>>).fold(
      () => none(),
      (some) => some.fold(
        (l) => left(l),
        (r) => right(r),
      ),
    );
  }
}
