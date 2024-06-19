import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';

// Definir los posibles estados del bloc
enum ChatSupportBlocStatus { initial, loading, loaded, error }

// Definir el estado del bloc
class ChatSupportState {
  final ChatSupportModel? chatSupportData;
  final ChatSupportBlocStatus status;

  const ChatSupportState({
    this.chatSupportData,
    required this.status,
  });

  // Estados iniciales predefinidos
  factory ChatSupportState.initial() {
    return const ChatSupportState(status: ChatSupportBlocStatus.initial);
  }

  factory ChatSupportState.loading() {
    return const ChatSupportState(status: ChatSupportBlocStatus.loading);
  }

  factory ChatSupportState.loaded(ChatSupportModel chatSupportData) {
    return ChatSupportState(status: ChatSupportBlocStatus.loaded, chatSupportData: chatSupportData);
  }

  factory ChatSupportState.error() {
    return const ChatSupportState(status: ChatSupportBlocStatus.error);
  }
}