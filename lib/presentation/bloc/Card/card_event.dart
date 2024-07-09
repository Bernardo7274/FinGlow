import 'package:equatable/equatable.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object?> get props => [];
}

class LoadCardDataEvent extends CardEvent {}

class CardNumberChanged extends CardEvent {
  final int cardnumber;

  const CardNumberChanged(this.cardnumber);

  @override
  List<Object?> get props => [cardnumber];
}

class DueDateChanged extends CardEvent {
  final String duedate;

  const DueDateChanged(this.duedate);

  @override
  List<Object?> get props => [duedate];
}

class CVVChanged extends CardEvent {
  final int cvv;

  const CVVChanged(this.cvv);

  @override
  List<Object?> get props => [cvv];
}

class MovementTypeChanged extends CardEvent {
  final String movementtype;

  const MovementTypeChanged(this.movementtype);

  @override
  List<Object?> get props => [movementtype];
}

class MovementAmountChanged extends CardEvent {
  final double movementamount;

  const MovementAmountChanged(this.movementamount);

  @override
  List<Object?> get props => [movementamount];
}

class MovementDateChanged extends CardEvent {
  final String movementdate;

  const MovementDateChanged(this.movementdate);

  @override
  List<Object?> get props => [movementdate];
}

class CardSubmitted extends CardEvent {}
