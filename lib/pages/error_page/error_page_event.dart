part of 'error_page_bloc.dart';

@immutable
abstract class ErrorPageEvent extends Equatable {
  const ErrorPageEvent();

  @override
  List<Object> get props => [];
}

class ErrorPageInit extends ErrorPageEvent {
  final ErrorPageState errorPageState;

  const ErrorPageInit({required this.errorPageState});
}

class ErrorPagePushButton extends ErrorPageEvent {
  final ErrorPageState errorPageState;

  const ErrorPagePushButton({required this.errorPageState});
}
