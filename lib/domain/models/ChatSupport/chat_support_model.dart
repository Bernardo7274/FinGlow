import 'package:json_annotation/json_annotation.dart';

part 'chat_support_model.g.dart';

@JsonSerializable()
class ChatSupportModel{
  String phonenumber;

  ChatSupportModel({
  required this.phonenumber,
});

factory ChatSupportModel.fromJson(Map<String, dynamic> json) => _$ChatSupportModelFromJson(json);
Map<String, dynamic> toJson() => _$ChatSupportModelToJson(this);

}