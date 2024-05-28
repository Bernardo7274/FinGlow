import 'package:FinGlow/domain/models/Transaccion/transactions_model.dart';

abstract class TransactionRepository {
  Future<TransferenciaBancariaModel> LoadTransaction();
}