// ignore_for_file: override_on_non_overriding_member, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';
import 'package:FinGlow/domain/repositories/SeminarsAndEvents/seminarsandeventsD_repository.dart';
import 'package:FinGlow/domain/usecases/SeminarsAndEvents/load_event_data.dart';

// Event
abstract class SeminarsAndEventsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadEventDataEvent extends SeminarsAndEventsEvent {}

// State
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

// BLoC
class SeminarsAndEventsBloc
    extends Bloc<SeminarsAndEventsEvent, SeminarsAndEventsState> {
  final SeminarsandeventsRepositoy repository;

  SeminarsAndEventsBloc(this.repository) : super(SeminarsAndEventsInitial());

  @override
  Stream<SeminarsAndEventsState> mapEventToState(
      SeminarsAndEventsEvent event) async* {
    if (event is LoadEventDataEvent) {
      yield SeminarsAndEventsLoading();
      try {
        final usecase = LoadEventData(repository);
        final eventData = await usecase.call();
        yield SeminarsAndEventsLoaded(eventData);
      } catch (e) {
        yield SeminarsAndEventsError(e.toString());
      }
    }
  }
}