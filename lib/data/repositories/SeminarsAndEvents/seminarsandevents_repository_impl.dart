import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';
import 'package:FinGlow/domain/repositories/SeminarsAndEvents/seminarsandeventsD_repository.dart';
import 'package:FinGlow/logger.dart';  // Importa el logger

class SeminarsandeventsRepositoryImpl implements SeminarsandeventsRepositoy {
  @override
  Future<EventModel> loadEventData() async {
    try {
      final response = await rootBundle.loadString('json_data/seminarsandevents_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data');  // Usa el logger
      return EventModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  // Usa el logger para errores
      rethrow;  // Opcionalmente vuelve a lanzar la excepción después de registrar el error
    }
  }
}
