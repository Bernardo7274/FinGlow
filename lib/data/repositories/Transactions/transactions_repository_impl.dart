import 'dart:convert';
import 'package:FinGlow/domain/models/Transaccion/transactions_model.dart';
import 'package:FinGlow/domain/repositories/Transactions/transactionsD_repository.dart';
import 'package:flutter/services.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  @override
  Future<TransferenciaBancariaModel> LoadTransaction() async{
    final response = await rootBundle.loadString('json_data/transactions_data.json');
    final data = json.decode(response);
    print(data);
    return TransferenciaBancariaModel.fromJson(data);
    }
}