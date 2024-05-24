import 'package:json_annotation/json_annotation.dart';

part 'historyD_model.g.dart';

@JsonSerializable()
class HistoryDModel{
String movementtype;
double movementamount;
DateTime moventdate;

HistoryDModel({
  required this.moventdate,
  required this.movementamount,
  required this.movementtype,
});

factory HistoryDModel.fromJson(Map<String, dynamic> json) => _$HistoryDModelFromJson(json);
Map<String, dynamic> toJson() => _$HistoryDModelToJson(this);
}