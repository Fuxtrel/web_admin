import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(const WelcomeState()) {
    on<WelcomeEvent>((event, emit) {
      if (event is ButtonPush) {
        print("Button");
        emit(state.copyWith(isFirstTimeOpened: false));
      }
    });
  }
}
