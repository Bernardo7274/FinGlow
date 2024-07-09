import 'package:json_annotation/json_annotation.dart';

part 'card_model.g.dart';

@JsonSerializable()
class CardModel{
  int cardnumber;
  String duedate;
  int cvv;
  String movementtype;
  double movementamount;
  String movementdate;

  CardModel({
  required this.cardnumber,
  required this.duedate,
  required this.cvv,
  required this.movementtype,
  required this.movementamount,
  required this.movementdate,
});

factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);
Map<String, dynamic> toJson() => _$CardModelToJson(this);
}