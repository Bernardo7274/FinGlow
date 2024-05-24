// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketplaceModel _$MarketplaceModelFromJson(Map<String, dynamic> json) =>
    MarketplaceModel(
      promotions: json['promotions'] as String,
      discount_rate: json['discount_rate'] as String,
    );

Map<String, dynamic> _$MarketplaceModelToJson(MarketplaceModel instance) =>
    <String, dynamic>{
      'promotions': instance.promotions,
      'discount_rate': instance.discount_rate,
    };
