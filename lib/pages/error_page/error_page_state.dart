part of 'error_page_bloc.dart';

@immutable
abstract class ErrorPageState extends Equatable {
  late final String errorMessage;
  late final Color errorColor;
  late final String helpUrl;

  ErrorPageState copyWith({
    String? errorMessage,
    Color? errorColor,
    String? helpUrl,
  });

  ErrorPageState fromState({required ErrorPageState state});

  @override
  String toString() {
    return 'ErrorPageState{errorMessage: $errorMessage, errorColor: $errorColor, helpUrl: $helpUrl}';
  }

  @override
  List<Object> get props => [
        errorMessage,
        errorColor,
        helpUrl,
      ];
}
