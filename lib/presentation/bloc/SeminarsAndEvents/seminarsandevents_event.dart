import 'package:equatable/equatable.dart';

abstract class SeminarsAndEventsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadEventDataEvent extends SeminarsAndEventsEvent {}