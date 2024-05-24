// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historyD_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryDModel _$HistoryDModelFromJson(Map<String, dynamic> json) =>
    HistoryDModel(
      moventdate: DateTime.parse(json['moventdate'] as String),
      movementamount: (json['movementamount'] as num).toDouble(),
      movementtype: json['movementtype'] as String,
    );

Map<String, dynamic> _$HistoryDModelToJson(HistoryDModel instance) =>
    <String, dynamic>{
      'movementtype': instance.movementtype,
      'movementamount': instance.movementamount,
      'moventdate': instance.moventdate.toIso8601String(),
    };
