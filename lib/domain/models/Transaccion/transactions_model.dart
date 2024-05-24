import 'package:json_annotation/json_annotation.dart';

part 'transactions_model.g.dart';

@JsonSerializable()
class TransferenciaBancariaModel {
  String id_transaccion;
  DateTime fecha;
  String hora;
  double monto;
  String moneda;
  CuentaBancariaModel origen;
  CuentaBancariaModel destino;
  String descripcion;
  String estado;

  TransferenciaBancariaModel({
    required this.id_transaccion,
    required this.fecha,
    required this.hora,
    required this.monto,
    required this.moneda,
    required this.origen,
    required this.destino,
    required this.descripcion,
    required this.estado,
  });

  factory TransferenciaBancariaModel.fromJson(Map<String, dynamic> json) => _$TransferenciaBancariaModelFromJson(json);
  Map<String, dynamic> toJson() => _$TransferenciaBancariaModelToJson(this);
}

@JsonSerializable()
class CuentaBancariaModel {
  String cuenta_numero;
  String banco;
  String titular;

  CuentaBancariaModel({
    required this.cuenta_numero,
    required this.banco,
    required this.titular,
  });

  factory CuentaBancariaModel.fromJson(Map<String, dynamic> json) => _$CuentaBancariaModelFromJson(json);
  Map<String, dynamic> toJson() => _$CuentaBancariaModelToJson(this);
}