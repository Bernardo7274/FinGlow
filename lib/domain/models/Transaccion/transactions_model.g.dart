// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferenciaBancariaModel _$TransferenciaBancariaModelFromJson(
        Map<String, dynamic> json) =>
    TransferenciaBancariaModel(
      id_transaccion: json['id_transaccion'] as String,
      fecha: DateTime.parse(json['fecha'] as String),
      hora: json['hora'] as String,
      monto: (json['monto'] as num).toDouble(),
      moneda: json['moneda'] as String,
      origen:
          CuentaBancariaModel.fromJson(json['origen'] as Map<String, dynamic>),
      destino:
          CuentaBancariaModel.fromJson(json['destino'] as Map<String, dynamic>),
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$TransferenciaBancariaModelToJson(
        TransferenciaBancariaModel instance) =>
    <String, dynamic>{
      'id_transaccion': instance.id_transaccion,
      'fecha': instance.fecha.toIso8601String(),
      'hora': instance.hora,
      'monto': instance.monto,
      'moneda': instance.moneda,
      'origen': instance.origen,
      'destino': instance.destino,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
    };

CuentaBancariaModel _$CuentaBancariaModelFromJson(Map<String, dynamic> json) =>
    CuentaBancariaModel(
      cuenta_numero: json['cuenta_numero'] as String,
      banco: json['banco'] as String,
      titular: json['titular'] as String,
    );

Map<String, dynamic> _$CuentaBancariaModelToJson(
        CuentaBancariaModel instance) =>
    <String, dynamic>{
      'cuenta_numero': instance.cuenta_numero,
      'banco': instance.banco,
      'titular': instance.titular,
    };
