part of 'error_page_bloc.dart';

class ErrorPageInitial extends ErrorPageState {
  ErrorPageInitial({
    String? errorMessage,
    Color? errorColor,
    String? helpUrl,
  }) {
    this.errorColor = errorColor ?? Colors.red;
    this.errorMessage = errorMessage ?? "Something goes wrong";
    this.helpUrl = helpUrl ?? "https://stackoverflow.com";
  }

  @override
  ErrorPageInitial copyWith({
    String? errorMessage,
    Color? errorColor,
    String? helpUrl,
  }) {
    return ErrorPageInitial(
      errorMessage: errorMessage ?? this.errorMessage,
      errorColor: errorColor ?? this.errorColor,
      helpUrl: helpUrl ?? this.helpUrl,
    );
  }

  @override
  ErrorPageInitial fromState({required ErrorPageState state}) {
    return ErrorPageInitial(
      errorMessage: state.errorMessage,
      errorColor: state.errorColor,
      helpUrl: state.helpUrl,
    );
  }
}
