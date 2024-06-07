// ignore_for_file: unrelated_type_equality_checks, unnecessary_null_comparison

import 'package:FinGlow/domain/models/Dashboard/financial_dashboard_model.dart';
import 'package:FinGlow/domain/repositories/Dashboard/dashboardD_repositories_impl.dart';

class LoadDashboardData {
  final DashboardRepository repository;

  LoadDashboardData(this.repository);

  Future<DashboardModel> call() async {
    final dashboardData = await repository.loadFormData();

    //Validaciones
    if (!_isValidEventType(dashboardData.reportscategory)) {
      throw Exception('El tipo de reporte no es válido.');
    }

    return dashboardData;
  }

  bool _isValidEventType(String eventtype) {
    // Aquí defines los tipos de eventos válidos
    const validReportTypes = ['Semanal', 'Mensual','Anual'];
    return validReportTypes.contains(eventtype);
  }

}