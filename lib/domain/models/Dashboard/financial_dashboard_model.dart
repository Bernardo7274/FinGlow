import 'package:json_annotation/json_annotation.dart';

part 'financial_dashboard_model.g.dart';

@JsonSerializable()
class DashboardModel{
  String reportscategory;
  double incomeamount;
  double amountexpenses; 

  DashboardModel({
  required this.reportscategory,
  required this.incomeamount,
  required this.amountexpenses,
});

factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);
Map<String, dynamic> toJson() => _$DashboardModelToJson(this);

}