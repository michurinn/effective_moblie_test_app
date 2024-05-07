
import 'package:effective_test_work/core/failtures/failures.dart';

/// Type for data mapper function.
typedef DataMapper<R, TData> = R Function(TData value);

/// Result of a function execution.
///
/// [Result.ok] - named constructor for a successful Result - [Result].
///
/// [Result.failed] - named constructor for Result with error - [ResultFailed].
sealed class Result<TData, TErr extends Failure> {
  const Result();

  const factory Result.ok(TData data) = ResultOk;

  const factory Result.failed(TErr failure) = ResultFailed;

  /// Conversion [ResultOk].
  Result<R, TErr> mapResult<R>(DataMapper<R, TData> mapper) {
    return switch (this) {
      ResultOk<TData, TErr>(:final data) => Result.ok(mapper(data)),
      ResultFailed<TData, TErr>(:final failure) => Result.failed(failure),
    };
  }
}

final class ResultOk<TData, TErr extends Failure> extends Result<TData, TErr> {
  /// Successful Result data.
  final TData data;

  const ResultOk(this.data);
}

final class ResultFailed<TData, TErr extends Failure> extends Result<TData, TErr> {
  /// Failed Result error.
  final TErr failure;

  const ResultFailed(this.failure);
}
