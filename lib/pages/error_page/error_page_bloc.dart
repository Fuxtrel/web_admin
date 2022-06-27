import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'error_page_event.dart';
part 'error_page_init_state.dart';
part 'error_page_state.dart';

class ErrorPageBloc extends Bloc<ErrorPageEvent, ErrorPageState> {
  ErrorPageBloc() : super(ErrorPageInitial()) {
    on<ErrorPageEvent>((event, emit) {
      if (event is ErrorPageInit) {
        emit(state.fromState(
          state: event.errorPageState,
        ));
      } else if (event is ErrorPagePushButton) {
        emit(state.fromState(
          state: event.errorPageState,
        ));
      }
    });
  }
}
