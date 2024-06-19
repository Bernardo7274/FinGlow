import 'package:equatable/equatable.dart';

abstract class EventEvent extends Equatable {
  const EventEvent();

  @override
  List<Object?> get props => [];
}

class LoadEventDataEvent extends EventEvent {}

class EventTypeChanged extends EventEvent {
  final String eventtype;

  const EventTypeChanged(this.eventtype);

  @override
  List<Object?> get props => [eventtype];
}

class CategoryNameChanged extends EventEvent {
  final String categoryname;

  const CategoryNameChanged(this.categoryname);

  @override
  List<Object?> get props => [categoryname];
}

class EventNameChanged extends EventEvent {
  final String eventname;

  const EventNameChanged(this.eventname);

  @override
  List<Object?> get props => [eventname];
}

class WestNameChanged extends EventEvent {
  final String westname;

  const WestNameChanged(this.westname);

  @override
  List<Object?> get props => [westname];
}

class OccupationChanged extends EventEvent {
  final String occupation;

  const OccupationChanged(this.occupation);

  @override
  List<Object?> get props => [occupation];
}

class PlatformChanged extends EventEvent {
  final String platform;

  const PlatformChanged(this.platform);

  @override
  List<Object?> get props => [platform];
}

class EventDateChanged extends EventEvent {
  final DateTime eventdate;

  const EventDateChanged(this.eventdate);

  @override
  List<Object?> get props => [eventdate];
}

class EventDayChanged extends EventEvent {
  final String eventday;

  const EventDayChanged(this.eventday);

  @override
  List<Object?> get props => [eventday];
}

class EventSubmitted extends EventEvent {}
