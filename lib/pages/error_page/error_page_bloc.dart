import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'error_page_event.dart';
part 'error_page_state.dart';

class ErrorPageBloc extends Bloc<ErrorPageEvent, ErrorPageState> {
  ErrorPageBloc() : super(const ErrorPageState()) {
    print("Creating bloc error page");
    on<ErrorPageEvent>((event, emit) async {
      if (event is ErrorMessage) {
        print(event.errorMessage);
        await Future.delayed(Duration(seconds: 3));
        emit(state.copyWith(errorMessage: event.errorMessage));
      } else {
        print("Not known event");
      }
    });
  }
}
