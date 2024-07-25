import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fin_glow/domain/models/Card/card_model.dart';
import 'package:fin_glow/domain/repositories/Card/cardD_repository.dart';
import 'package:fin_glow/logger.dart';  // Asegúrate de importar el logger

class CardRepositoryImpl implements CardRepository {
  @override
  Future<CardModel> loadEventData() async {
    try {
      final response = await rootBundle.loadString('json_data/card_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data'); 
      return CardModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  
      rethrow;  
    }
  }
}
