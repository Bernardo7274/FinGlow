import 'package:fin_glow/domain/usecases/Register/load_register_data.dart';
import 'package:fin_glow/presentation/bloc/Register/register_event.dart';
import 'package:fin_glow/presentation/bloc/Register/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterData submitRegister;

  RegisterBloc(this.submitRegister) : super(RegisterInitial()) {
    on<SubmitRegisterEvent>((event, emit) async {
      emit(RegisterLoading());
      try {
        await submitRegister(event.register);
        emit(RegisterSuccess());
      } catch (e) {
        emit(RegisterError(e.toString()));
      }
    });
  }
}
