import 'package:json_annotation/json_annotation.dart';
part 'search_model.g.dart';
@JsonSerializable()
class SearchModel{
  String eventtype;
  String categoryname;
  String eventname;
  String westname;
  String occupation;
  String platform;
  DateTime eventdate;
  String eventday;

  SearchModel({
  required this.eventtype,
  required this.categoryname,
  required this.eventname,
  required this.westname,
  required this.occupation,
  required this.platform,
  required this.eventdate,
  required this.eventday,
});

factory SearchModel.fromJson(Map<String, dynamic> json) => _$SearchModelFromJson(json);
Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}