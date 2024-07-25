import 'package:fin_glow/domain/models/Transaccion/transactions_model.dart';

abstract class TransactionRepository {
  Future<TransferenciaBancariaModel> loadTransaction();
}
