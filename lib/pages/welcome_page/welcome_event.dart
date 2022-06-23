part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeEvent extends Equatable {
  const WelcomeEvent();

  @override
  List<Object?> get props => [];
}

class ButtonPush extends WelcomeEvent {
  final int number;
  const ButtonPush({this.number = 1});
}
