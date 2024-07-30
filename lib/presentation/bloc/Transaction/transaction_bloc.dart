import 'package:FinGlow/domain/usecases/Transactions/load_transactions_data.dart';
import 'package:FinGlow/presentation/bloc/transaction/transaction_event.dart';
import 'package:FinGlow/presentation/bloc/transaction/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferenciaBloc extends Bloc<TransferenciaEvent, TransferenciaState> {
  final LoadTransferenciaBancaria loadTransferenciaBancaria;

  TransferenciaBloc(this.loadTransferenciaBancaria) : super(const TransferenciaState()) {
    on<LoadTransferencias>((event, emit) async {
      try {
        final transferencia = await loadTransferenciaBancaria();
        emit(TransferenciaState.fromModel(transferencia));
      } catch (e) {
        emit(state.copyWith(isValid: false));
      }
    });

    on<TransferenciaIdChanged>((event, emit) {
      emit(state.copyWith(id_transaccion: event.id_transaccion, isValid: _validateForm()));
    });
    on<TransferenciaFechaChanged>((event, emit) {
      emit(state.copyWith(fecha: event.fecha, isValid: _validateForm()));
    });
    on<TransferenciaHoraChanged>((event, emit) {
      emit(state.copyWith(hora: event.hora, isValid: _validateForm()));
    });
    on<TransferenciaMontoChanged>((event, emit) {
      emit(state.copyWith(monto: event.monto, isValid: _validateForm()));
    });
    on<TransferenciaMonedaChanged>((event, emit) {
      emit(state.copyWith(moneda: event.moneda, isValid: _validateForm()));
    });
    on<TransferenciaOrigenChanged>((event, emit) {
      emit(state.copyWith(origen: event.origen, isValid: _validateForm()));
    });
    on<TransferenciaDestinoChanged>((event, emit) {
      emit(state.copyWith(destino: event.destino, isValid: _validateForm()));
    });
    on<TransferenciaDescripcionChanged>((event, emit) {
      emit(state.copyWith(descripcion: event.descripcion, isValid: _validateForm()));
    });
    on<TransferenciaEstadoChanged>((event, emit) {
      emit(state.copyWith(estado: event.estado, isValid: _validateForm()));
    });
    on<FormSubmitted>((event, emit) {
      if (state.isValid) {
        // Manejar la lógica de envío del formulario
      }
    });
  }

  bool _validateForm() {
    return state.id_transaccion.isNotEmpty &&
        state.fecha != null &&
        state.hora.isNotEmpty &&
        state.monto > 0 &&
        state.moneda.isNotEmpty &&
        state.origen != null &&
        state.origen!.cuenta_numero.isNotEmpty &&
        state.origen!.banco.isNotEmpty &&
        state.origen!.titular.isNotEmpty &&
        state.destino != null &&
        state.destino!.cuenta_numero.isNotEmpty &&
        state.destino!.banco.isNotEmpty &&
        state.destino!.titular.isNotEmpty &&
        state.descripcion.isNotEmpty &&
        state.estado.isNotEmpty;
  }
}