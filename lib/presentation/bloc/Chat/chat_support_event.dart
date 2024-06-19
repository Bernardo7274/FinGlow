import 'package:equatable/equatable.dart';

abstract class ChatSupportEvent extends Equatable {
  const ChatSupportEvent();

  @override
  List<Object?> get props => [];
}

class FetchChatSupportDataEvent extends ChatSupportEvent {}