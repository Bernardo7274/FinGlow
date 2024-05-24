// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seminarsandevents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      eventtype: json['eventtype'] as String,
      categoryname: json['categoryname'] as String,
      eventname: json['eventname'] as String,
      westname: json['westname'] as String,
      occupation: json['occupation'] as String,
      platform: json['platform'] as String,
      eventdate: DateTime.parse(json['eventdate'] as String),
      eventday: json['eventday'] as String,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'eventtype': instance.eventtype,
      'categoryname': instance.categoryname,
      'eventname': instance.eventname,
      'westname': instance.westname,
      'occupation': instance.occupation,
      'platform': instance.platform,
      'eventdate': instance.eventdate.toIso8601String(),
      'eventday': instance.eventday,
    };
