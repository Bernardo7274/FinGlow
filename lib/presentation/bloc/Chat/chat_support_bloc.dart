import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';
import 'package:FinGlow/domain/usecases/SeminarsAndEvents/load_event_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_support_event.dart';
import 'chat_support_state.dart';

// Implementar el bloc
class ChatSupportBloc extends Bloc<ChatSupportEvent, ChatSupportState> {
  final LoadEventData loadEventData;

  ChatSupportBloc({required this.loadEventData})
      : super(ChatSupportState.initial());

  Stream<ChatSupportState> mapEventToState(ChatSupportEvent event) async* {
    if (event is FetchChatSupportDataEvent) {
      yield ChatSupportState.loading();
      try {
        final chatSupportData = await loadEventData.call();
        yield ChatSupportState.loaded(chatSupportData as ChatSupportModel);
      } catch (_) {
        yield ChatSupportState.error();
      }
    }
  }
}
