import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fin_glow/domain/models/Home/home_model.dart';
import 'package:fin_glow/domain/repositories/Home/homeD_repository.dart';
import 'package:fin_glow/logger.dart';  // Asegúrate de importar el logger

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<HomeModel> loadEventData() async {
    try {
      final response = await rootBundle.loadString('json_data/home_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data');  // Usa el logger
      return HomeModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  // Usa el logger para errores
      rethrow;  // Opcionalmente vuelve a lanzar la excepción después de registrar el error
    }
  }
}
