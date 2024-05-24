import 'package:json_annotation/json_annotation.dart';

part 'market_place_model.g.dart';

@JsonSerializable()
class MarketplaceModel{
  String promotions;
  String discount_rate;
  

  MarketplaceModel({
  required this.promotions,
  required this.discount_rate,
});

factory MarketplaceModel.fromJson(Map<String, dynamic> json) => _$MarketplaceModelFromJson(json);
Map<String, dynamic> toJson() => _$MarketplaceModelToJson(this);

}