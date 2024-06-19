import 'package:FinGlow/domain/models/Transaccion/transactions_model.dart';
import 'package:equatable/equatable.dart';

abstract class TransferenciaEvent extends Equatable {
  const TransferenciaEvent();

  @override
  List<Object?> get props => [];
}

class LoadTransferencia extends TransferenciaEvent {}

class TransferenciaIdChanged extends TransferenciaEvent {
  final String id_transaccion;

  const TransferenciaIdChanged(this.id_transaccion);

  @override
  List<Object?> get props => [id_transaccion];
}

class TransferenciaFechaChanged extends TransferenciaEvent {
  final DateTime fecha;

  const TransferenciaFechaChanged(this.fecha);

  @override
  List<Object?> get props => [fecha];
}

class TransferenciaHoraChanged extends TransferenciaEvent {
  final String hora;

  const TransferenciaHoraChanged(this.hora);

  @override
  List<Object?> get props => [hora];
}

class TransferenciaMontoChanged extends TransferenciaEvent {
  final double monto;

  const TransferenciaMontoChanged(this.monto);

  @override
  List<Object?> get props => [monto];
}

class TransferenciaMonedaChanged extends TransferenciaEvent {
  final String moneda;

  const TransferenciaMonedaChanged(this.moneda);

  @override
  List<Object?> get props => [moneda];
}

class TransferenciaOrigenChanged extends TransferenciaEvent {
  final CuentaBancariaModel origen;

  const TransferenciaOrigenChanged(this.origen);

  @override
  List<Object?> get props => [origen];
}

class TransferenciaDestinoChanged extends TransferenciaEvent {
  final CuentaBancariaModel destino;

  const TransferenciaDestinoChanged(this.destino);

  @override
  List<Object?> get props => [destino];
}

class TransferenciaDescripcionChanged extends TransferenciaEvent {
  final String descripcion;

  const TransferenciaDescripcionChanged(this.descripcion);

  @override
  List<Object?> get props => [descripcion];
}

class TransferenciaEstadoChanged extends TransferenciaEvent {
  final String estado;

  const TransferenciaEstadoChanged(this.estado);

  @override
  List<Object?> get props => [estado];
}

class AddTransferencia extends TransferenciaEvent {
  final TransferenciaBancariaModel transferencia;

  const AddTransferencia(this.transferencia);

  @override
  List<Object?> get props => [transferencia];
}

class UpdateTransferencia extends TransferenciaEvent {
  final String id;
  final String nuevoEstado;

  const UpdateTransferencia(this.id, this.nuevoEstado);

  @override
  List<Object?> get props => [id, nuevoEstado];
}

class FormSubmitted extends TransferenciaEvent {}