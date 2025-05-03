import 'package:fpdart/fpdart.dart' show Either;

import '../errors.dart' show Failure;

typedef FutureEitherFailureOr<T> = Future<Either<Failure, T>>;