import 'package:FinGlow/domain/usecases/Card/card_usecase.dart' as usecase;
import 'package:FinGlow/presentation/bloc/Card/card_event.dart';
import 'package:FinGlow/presentation/bloc/Card/card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  final usecase.LoadEventData loadCardData;

  CardBloc(this.loadCardData) : super(const CardState()) {
    on<LoadCardDataEvent>((event, emit) async {
      final financialData = await loadCardData();
      emit(CardState.fromModel(financialData));
    });

    on<CardNumberChanged>((event, emit) {
      emit(state.copyWith(cardnumber: event.cardnumber));
    });
    on<DueDateChanged>((event, emit) {
      emit(state.copyWith(duedate: event.duedate));
    });
    on<CVVChanged>((event, emit) {
      emit(state.copyWith(cvv: event.cvv));
    });
    on<MovementTypeChanged>((event, emit) {
      emit(state.copyWith(movementtype: event.movementtype));
    });
    on<MovementAmountChanged>((event, emit) {
      emit(state.copyWith(movementamount: event.movementamount));
    });
    on<MovementDateChanged>((event, emit) {
      emit(state.copyWith(movementdate: event.movementdate));
    });
    on<CardSubmitted>((event, emit) {
      if (state.isValid) {
        // Handle card submission logic
      }
    });
  }

  bool _validateForm() {
    return state.cardnumber != null &&
        state.duedate != null &&
        state.cvv != null &&
        state.movementtype.isNotEmpty &&
        state.movementamount > 0 &&
        state.movementdate != null;
  }
}
