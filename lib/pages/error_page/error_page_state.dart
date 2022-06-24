part of 'error_page_bloc.dart';

class ErrorPageState extends Equatable {
  final String errorMessage;

  const ErrorPageState({
    this.errorMessage = "Error",
  });

  ErrorPageState copyWith({
    String? errorMessage,
  }) {
    return ErrorPageState(
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        errorMessage,
      ];
}
