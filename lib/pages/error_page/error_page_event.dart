part of 'error_page_bloc.dart';

@immutable
abstract class ErrorPageEvent extends Equatable {
  const ErrorPageEvent();

  @override
  List<Object> get props => [];
}

class ErrorMessage extends ErrorPageEvent {
  final String errorMessage;
  const ErrorMessage({this.errorMessage = "Something goes wrong"});
}
