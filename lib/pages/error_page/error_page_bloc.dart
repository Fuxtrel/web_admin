import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'error_page_event.dart';
part 'error_page_state.dart';

class ErrorPageBloc extends Bloc<ErrorPageEvent, ErrorPageState> {
  ErrorPageBloc() : super(ErrorPageState()) {
    on<ErrorPageEvent>((event, emit) {});
  }
}
