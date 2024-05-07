import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]);
}

class FailMock extends Failure {
  final String? message;

  FailMock(this.message) : super([message]);

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailture extends Failure {
  @override
  List<Object?> get props => [];
}
