// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardModel _$CardModelFromJson(Map<String, dynamic> json) => CardModel(
      cardnumber: (json['cardnumber'] as num).toInt(),
      duedate: DateTime.parse(json['duedate'] as String),
      cvv: (json['cvv'] as num).toInt(),
      movementtype: json['movementtype'] as String,
      movementamount: (json['movementamount'] as num).toDouble(),
      movementdate: DateTime.parse(json['movementdate'] as String),
    );

Map<String, dynamic> _$CardModelToJson(CardModel instance) => <String, dynamic>{
      'cardnumber': instance.cardnumber,
      'duedate': instance.duedate.toIso8601String(),
      'cvv': instance.cvv,
      'movementtype': instance.movementtype,
      'movementamount': instance.movementamount,
      'movementdate': instance.movementdate.toIso8601String(),
    };
