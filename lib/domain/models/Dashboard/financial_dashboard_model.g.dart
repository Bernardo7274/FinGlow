// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    DashboardModel(
      reportscategory: json['reportscategory'] as String,
      incomeamount: json['incomeamount'] as String,
      amountexpenses: json['amountexpenses'] as String,
    );

Map<String, dynamic> _$DashboardModelToJson(DashboardModel instance) =>
    <String, dynamic>{
      'reportscategory': instance.reportscategory,
      'incomeamount': instance.incomeamount,
      'amountexpenses': instance.amountexpenses,
    };
