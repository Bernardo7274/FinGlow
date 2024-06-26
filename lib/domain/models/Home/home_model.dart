import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel{
  String username;
  double amountavailable;
  String movementtype;
  String movementamount;
  DateTime movementdate;
  String profilepicture;
  

  HomeModel({
  required this.username,
  required this.amountavailable,
  required this.movementtype,
  required this.movementamount,
  required this.movementdate,
  required this.profilepicture,
});

factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}