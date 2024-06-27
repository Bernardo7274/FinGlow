// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      username: json['username'] as String,
      amountavailable: (json['amountavailable'] as num).toDouble(),
      movementtype: json['movementtype'] as String,
      movementamount: json['movementamount'] as String,
      movementdate: json['movementdate'] as String,
      profilepicture: json['profilepicture'] as String,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'username': instance.username,
      'amountavailable': instance.amountavailable,
      'movementtype': instance.movementtype,
      'movementamount': instance.movementamount,
      'movementdate': instance.movementdate,
      'profilepicture': instance.profilepicture,
    };
