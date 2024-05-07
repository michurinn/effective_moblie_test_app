
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/core/failtures/failures.dart';

/// Typedef for all methods that may fail.
/// These are mostly repository methods.
typedef RequestOperation<T> = Future<Result<T, Failure>>;
