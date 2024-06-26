import 'package:equatable/equatable.dart';

abstract class ChatSupportEvent extends Equatable {
  const ChatSupportEvent();

  @override
  List<Object?> get props => [];
}

class LoadChatSupportDataEvent extends ChatSupportEvent {}

class PhoneNumberChanged extends ChatSupportEvent {
  final String phonenumber;

  const PhoneNumberChanged(this.phonenumber);

  @override
  List<Object?> get props => [phonenumber];
}

class ChatSupportSubmitted extends ChatSupportEvent {}
