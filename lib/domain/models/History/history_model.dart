import 'package:json_annotation/json_annotation.dart';

part 'history_model.g.dart';

@JsonSerializable()
class HistoryModel{
DateTime movementdate;
double movementamount;
String accountname;
String movementtype;
DateTime operationdate;
DateTime applicationdate;
String invoice;

 HistoryModel({
  required this.movementdate,
  required this.movementamount,
  required this.accountname,
  required this.movementtype,
  required this.operationdate,
  required this.applicationdate,
  required this.invoice,
});

factory HistoryModel.fromJson(Map<String, dynamic> json) => _$HistoryModelFromJson(json);
Map<String, dynamic> toJson() => _$HistoryModelToJson(this);
}