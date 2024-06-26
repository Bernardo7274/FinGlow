import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class LoadHomeDataEvent extends HomeEvent {}

class UsernameChanged extends HomeEvent {
  final String username;

  const UsernameChanged(this.username);

  @override
  List<Object?> get props => [username];
}

class AmountAvailableChanged extends HomeEvent {
  final double amountavailable;

  const AmountAvailableChanged(this.amountavailable);

  @override
  List<Object?> get props => [amountavailable];
}

class MovementTypeChanged extends HomeEvent {
  final String movementtype;

  const MovementTypeChanged(this.movementtype);

  @override
  List<Object?> get props => [movementtype];
}

class MovementAmountChanged extends HomeEvent {
  final String movementamount;

  const MovementAmountChanged(this.movementamount);

  @override
  List<Object?> get props => [movementamount];
}

class MovementDateChanged extends HomeEvent {
  final DateTime movementdate;

  const MovementDateChanged(this.movementdate);

  @override
  List<Object?> get props => [movementdate];
}

class ProfilePictureChanged extends HomeEvent {
  final String profilepicture;

  const ProfilePictureChanged(this.profilepicture);

  @override
  List<Object?> get props => [profilepicture];
}

class HomeSubmitted extends HomeEvent {}
