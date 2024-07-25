import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fin_glow/domain/models/Transaccion/transactions_model.dart';
import 'package:fin_glow/domain/repositories/Transactions/transactions_d_repository.dart';
import 'package:fin_glow/logger.dart';  // Importa el logger

class TransactionRepositoryImpl implements TransactionRepository {
  @override
  Future<TransferenciaBancariaModel> loadTransaction() async {
    try {
      final response = await rootBundle.loadString('json_data/transactions_data.json');
      final data = json.decode(response);
      AppLogger.info('Data loaded successfully: $data');  // Usa el logger
      return TransferenciaBancariaModel.fromJson(data);
    } catch (e) {
      AppLogger.error('Failed to load data: $e', e);  // Usa el logger para errores
      rethrow;  // Opcionalmente vuelve a lanzar la excepción después de registrar el error
    }
  }
}
