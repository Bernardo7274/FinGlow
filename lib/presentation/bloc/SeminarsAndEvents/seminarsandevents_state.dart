import 'package:equatable/equatable.dart';
import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';

abstract class SeminarsAndEventsState extends Equatable {
  @override
  List<Object> get props => [];
}

class SeminarsAndEventsInitial extends SeminarsAndEventsState {}

class SeminarsAndEventsLoading extends SeminarsAndEventsState {}

class SeminarsAndEventsLoaded extends SeminarsAndEventsState {
  final EventModel eventData;

  SeminarsAndEventsLoaded(this.eventData);

  @override
  List<Object> get props => [eventData];
}

class SeminarsAndEventsError extends SeminarsAndEventsState {
  final String message;

  SeminarsAndEventsError(this.message);

  @override
  List<Object> get props => [message];
}