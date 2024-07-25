import 'package:equatable/equatable.dart';
import 'package:fin_glow/domain/models/Seminars_and_events/seminarsandevents_model.dart';

class EventState extends Equatable {
  final String eventtype;
  final String categoryname;
  final String eventname;
  final String westname;
  final String occupation;
  final String platform;
  final DateTime? eventdate;
  final String eventday;
  final bool isValid;

  const EventState({
    this.eventtype = '',
    this.categoryname = '',
    this.eventname = '',
    this.westname = '',
    this.occupation = '',
    this.platform = '',
    this.eventdate,
    this.eventday = '',
    this.isValid = false,
  });

  factory EventState.fromModel(EventModel model) {
    return EventState(
      eventtype: model.eventtype,
      categoryname: model.categoryname,
      eventname: model.eventname,
      westname: model.westname,
      occupation: model.occupation,
      platform: model.platform,
      eventdate: model.eventdate,
      eventday: model.eventday,
      isValid: true,
    );
  }

  EventState copyWith({
    String? eventtype,
    String? categoryname,
    String? eventname,
    String? westname,
    String? occupation,
    String? platform,
    DateTime? eventdate,
    String? eventday,
    bool? isValid,
  }) {
    return EventState(
      eventtype: eventtype ?? this.eventtype,
      categoryname: categoryname ?? this.categoryname,
      eventname: eventname ?? this.eventname,
      westname: westname ?? this.westname,
      occupation: occupation ?? this.occupation,
      platform: platform ?? this.platform,
      eventdate: eventdate ?? this.eventdate,
      eventday: eventday ?? this.eventday,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        eventtype,
        categoryname,
        eventname,
        westname,
        occupation,
        platform,
        eventdate,
        eventday,
        isValid,
      ];
}
