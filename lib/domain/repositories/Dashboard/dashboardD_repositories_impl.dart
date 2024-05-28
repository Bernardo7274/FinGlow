import 'package:FinGlow/domain/models/Dashboard/financial_dashboard_model.dart';

abstract class DashboardRepository {
  Future<DashboardModel> loadFormData();
}