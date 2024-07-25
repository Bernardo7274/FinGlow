import 'package:fin_glow/domain/usecases/ChatSupport/chatsupport_usercase.dart' as usecase;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_support_event.dart';
import 'chat_support_state.dart';

class ChatSupportBloc extends Bloc<ChatSupportEvent, ChatSupportState> {
  final usecase.LoadEventData loadChatSupportData;

  ChatSupportBloc(this.loadChatSupportData) : super(const ChatSupportState()) {
    on<LoadChatSupportDataEvent>((event, emit) async {
      final chatSupportData = await loadChatSupportData();
      emit(ChatSupportState.fromModel(chatSupportData));
    });

    on<PhoneNumberChanged>((event, emit) {
      emit(state.copyWith(phonenumber: event.phonenumber));
    });

    on<ChatSupportSubmitted>((event, emit) {
      if (state.isValid) {
        // Handle chat support submission logic
      }
    });
  }

  bool _validateForm() {
    return state.phonenumber.isNotEmpty;
  }
}
