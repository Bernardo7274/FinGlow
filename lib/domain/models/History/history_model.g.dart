// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) => HistoryModel(
      movementdate: DateTime.parse(json['movementdate'] as String),
      movementamount: (json['movementamount'] as num).toDouble(),
      accountname: json['accountname'] as String,
      movementtype: json['movementtype'] as String,
      operationdate: DateTime.parse(json['operationdate'] as String),
      applicationdate: DateTime.parse(json['applicationdate'] as String),
      invoice: json['invoice'] as String,
    );

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'movementdate': instance.movementdate.toIso8601String(),
      'movementamount': instance.movementamount,
      'accountname': instance.accountname,
      'movementtype': instance.movementtype,
      'operationdate': instance.operationdate.toIso8601String(),
      'applicationdate': instance.applicationdate.toIso8601String(),
      'invoice': instance.invoice,
    };
