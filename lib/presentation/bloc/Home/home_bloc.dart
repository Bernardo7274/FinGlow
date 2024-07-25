// ignore_for_file: unnecessary_null_comparison

import 'package:fin_glow/domain/usecases/Home/home_usercase.dart' as usecase;
import 'package:fin_glow/presentation/bloc/Home/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fin_glow/presentation/bloc/Home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final usecase.LoadEventData loadHomeData;

  HomeBloc(this.loadHomeData) : super(const HomeState(movementdate: "")) {
    on<LoadHomeDataEvent>((event, emit) async {
      final homeData = await loadHomeData();
      emit(HomeState.fromModel(homeData));
    });

    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<AmountAvailableChanged>((event, emit) {
      emit(state.copyWith(amountavailable: event.amountavailable));
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
    on<ProfilePictureChanged>((event, emit) {
      emit(state.copyWith(profilepicture: event.profilepicture));
    });
    on<HomeSubmitted>((event, emit) {
      if (_validateForm()) {
        // Handle home submission logic
      }
    });
  }

  bool _validateForm() {
    return state.username.isNotEmpty &&
        state.amountavailable > 0 &&
        state.movementtype.isNotEmpty &&
        state.movementamount.isNotEmpty &&
        state.movementdate != null &&
        state.profilepicture.isNotEmpty;
  }
}
