import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';
import 'package:FinGlow/domain/repositories/ChatSupport/chat_supportD_repositories_impl.dart';
import 'package:FinGlow/logger.dart';  // Importa el logger

class ChatSupportRepositoryImpl implements ChatSupportRepository {
  @override
  Future<ChatSupportModel> loadFormData() async {
    try {
      final response = await rootBundle.loadString('json_data/chat_support_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data');  // Usa el logger
      return ChatSupportModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  // Usa el logger para errores
      rethrow;  // Opcionalmente vuelve a lanzar la excepción después de registrar el error
    }
  }
}
