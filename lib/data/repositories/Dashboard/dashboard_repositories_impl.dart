import 'dart:convert';
import 'package:FinGlow/domain/models/Dashboard/financial_dashboard_model.dart';
import 'package:FinGlow/domain/repositories/Dashboard/dashboardD_repositories_impl.dart';
import 'package:flutter/services.dart';

class DashboardRepositoryImpl implements DashboardRepository{
  @override
  Future<DashboardModel> loadFormData() async{
    final response = await rootBundle.loadString('assets/json_data/financial_dashboard_data.json');
    final data = json.decode(response);
    print(data);
    return DashboardModel.fromJson(data);
  }
}