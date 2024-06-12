// ignore_for_file: unnecessary_null_comparison

import 'package:FinGlow/domain/models/Transaccion/transactions_model.dart';
import 'package:FinGlow/domain/repositories/Transactions/transactionsD_repository.dart';

class LoadTransferenciaBancaria {
  final TransactionRepository repository;

  LoadTransferenciaBancaria(this.repository);

  Future<TransferenciaBancariaModel> call() async {
    final transferencia = await repository.LoadTransaction();

    // Validaciones
    if (transferencia.id_transaccion.isEmpty || !RegExp(r'^[a-zA-Z0-9]+$').hasMatch(transferencia.id_transaccion)) {
      throw Exception("El ID de la transacción no puede estar vacío y debe ser alfanumérico");
    }
    if (transferencia.fecha == null) {
      throw Exception("La fecha no puede ser nula");
    }
    if (transferencia.hora.isEmpty || !RegExp(r'^\d{2}:\d{2}$').hasMatch(transferencia.hora)) {
      throw Exception("La hora no puede estar vacía y debe estar en formato HH:mm");
    }
    if (transferencia.monto <= 0 || !RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(transferencia.monto.toString())) {
      throw Exception("El monto debe ser mayor que cero y un número válido");
    }
    if (transferencia.moneda.isEmpty || !RegExp(r'^[A-Z]{3}$').hasMatch(transferencia.moneda)) {
      throw Exception("La moneda no puede estar vacía y debe ser un código de tres letras");
    }
    if (transferencia.origen.cuenta_numero.isEmpty || !RegExp(r'^[0-9]{10,20}$').hasMatch(transferencia.origen.cuenta_numero)) {
      throw Exception("El número de cuenta de origen no puede estar vacío y debe tener entre 10 y 20 dígitos");
    }
    if (transferencia.origen.banco.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(transferencia.origen.banco)) {
      throw Exception("El banco de origen no puede estar vacío y debe ser alfabético");
    }
    if (transferencia.origen.titular.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(transferencia.origen.titular)) {
      throw Exception("El titular de la cuenta de origen no puede estar vacío y debe ser alfabético");
    }
    if (transferencia.destino.cuenta_numero.isEmpty || !RegExp(r'^[0-9]{10,20}$').hasMatch(transferencia.destino.cuenta_numero)) {
      throw Exception("El número de cuenta de destino no puede estar vacío y debe tener entre 10 y 20 dígitos");
    }
    if (transferencia.destino.banco.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(transferencia.destino.banco)) {
      throw Exception("El banco de destino no puede estar vacío y debe ser alfabético");
    }
    if (transferencia.destino.titular.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(transferencia.destino.titular)) {
      throw Exception("El titular de la cuenta de destino no puede estar vacío y debe ser alfabético");
    }
    if (transferencia.descripcion.isEmpty) {
      throw Exception("La descripción no puede estar vacía");
    }
    if (transferencia.estado.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(transferencia.estado)) {
      throw Exception("El estado no puede estar vacío y debe ser alfabético");
    }

    return transferencia;
  }
}