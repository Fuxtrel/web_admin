part of 'welcome_bloc.dart';

class WelcomeState extends Equatable {
  final bool isFirstTimeOpened;

  const WelcomeState({this.isFirstTimeOpened = true});

  WelcomeState copyWith({
    bool? isFirstTimeOpened,
  }) {
    return WelcomeState(
      isFirstTimeOpened: isFirstTimeOpened ?? this.isFirstTimeOpened,
    );
  }

  @override
  List<Object?> get props => [
        isFirstTimeOpened,
      ];
}
