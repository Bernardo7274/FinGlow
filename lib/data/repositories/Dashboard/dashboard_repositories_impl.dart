import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fin_glow/domain/models/Dashboard/financial_dashboard_model.dart';
import 'package:fin_glow/domain/repositories/Dashboard/dashboardD_repositories_impl.dart';
import 'package:fin_glow/logger.dart';  // Importa el logger

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<DashboardModel> loadFormData() async {
    try {
      final response = await rootBundle.loadString('json_data/financial_dashboard_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data');  // Usa el logger
      return DashboardModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  // Usa el logger para errores
      rethrow;  // Opcionalmente vuelve a lanzar la excepción después de registrar el error
    }
  }
}
