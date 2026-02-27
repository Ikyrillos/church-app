import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/widgets/toast_m.dart';
import 'package:abosiefienapp/core/errors/failures.dart';

void failureHandler(
    Either<Failure, dynamic> result, void Function() onSuccess) {
  result.fold(
    (l) => AppToast.showError(l.message),
    (r) => onSuccess(),
  );
}
