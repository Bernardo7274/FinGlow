// ignore_for_file: unrelated_type_equality_checks, unnecessary_null_comparison

import 'package:FinGlow/domain/models/Dashboard/financial_dashboard_model.dart';
import 'package:FinGlow/domain/repositories/Dashboard/dashboardD_repositories_impl.dart';

class LoadDashboardData {
  final DashboardRepository repository;

  LoadDashboardData(this.repository);

  Future<DashboardModel> call() async {
    final dashboardData = await repository.loadFormData();

    //Validaciones
    if (dashboardData.reportscategory.isEmpty && dashboardData.reportscategory == String){
      throw Exception('No hay datos para mostrar');
    }
    if (dashboardData.incomeamount == null && dashboardData.incomeamount == double && dashboardData.incomeamount <= 0){
      throw Exception('No hay datos para mostrar');
    }
    if (dashboardData.amountexpenses == null && dashboardData.amountexpenses == double && dashboardData.amountexpenses <= 0){
      throw Exception('No hay datos para mostrar');
    }
    return dashboardData;
  }
}