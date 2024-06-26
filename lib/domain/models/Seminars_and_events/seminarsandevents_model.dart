import 'package:json_annotation/json_annotation.dart';
part 'seminarsandevents_model.g.dart';

@JsonSerializable()
class EventModel{
  String eventtype;
  String categoryname;
  String eventname;
  String westname;
  String occupation;
  String platform;
  DateTime eventdate;
  String eventday;

  EventModel({
  required this.eventtype,
  required this.categoryname,
  required this.eventname,
  required this.westname,
  required this.occupation,
  required this.platform,
  required this.eventdate,
  required this.eventday,
});

factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);
Map<String, dynamic> toJson() => _$EventModelToJson(this);
}