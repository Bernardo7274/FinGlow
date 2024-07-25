import 'package:fin_glow/domain/models/Transaccion/transactions_model.dart';
import 'package:equatable/equatable.dart';

class TransferenciaState extends Equatable {
  final String id_transaccion;
  final DateTime? fecha;
  final String hora;
  final double monto;
  final String moneda;
  final CuentaBancariaModel? origen;
  final CuentaBancariaModel? destino;
  final String descripcion;
  final String estado;
  final bool isValid;

  const TransferenciaState({
    this.id_transaccion = '',
    this.fecha,
    this.hora = '',
    this.monto = 0.0,
    this.moneda = '',
    this.origen,
    this.destino,
    this.descripcion = '',
    this.estado = '',
    this.isValid = false,
  });

  factory TransferenciaState.fromModel(TransferenciaBancariaModel model) {
    return TransferenciaState(
      id_transaccion: model.id_transaccion,
      fecha: model.fecha,
      hora: model.hora,
      monto: model.monto,
      moneda: model.moneda,
      origen: model.origen,
      destino: model.destino,
      descripcion: model.descripcion,
      estado: model.estado,
      isValid: true,
    );
  }

  TransferenciaState copyWith({
    String? id_transaccion,
    DateTime? fecha,
    String? hora,
    double? monto,
    String? moneda,
    CuentaBancariaModel? origen,
    CuentaBancariaModel? destino,
    String? descripcion,
    String? estado,
    bool? isValid,
  }) {
    return TransferenciaState(
      id_transaccion: id_transaccion ?? this.id_transaccion,
      fecha: fecha ?? this.fecha,
      hora: hora ?? this.hora,
      monto: monto ?? this.monto,
      moneda: moneda ?? this.moneda,
      origen: origen ?? this.origen,
      destino: destino ?? this.destino,
      descripcion: descripcion ?? this.descripcion,
      estado: estado ?? this.estado,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        id_transaccion,
        fecha,
        hora,
        monto,
        moneda,
        origen,
        destino,
        descripcion,
        estado,
        isValid,
      ];
}