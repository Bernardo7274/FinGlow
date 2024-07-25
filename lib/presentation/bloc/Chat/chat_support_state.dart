import 'package:equatable/equatable.dart';
import 'package:fin_glow/domain/models/ChatSupport/chat_support_model.dart';

class ChatSupportState extends Equatable {
  final String phonenumber;
  final bool isValid;

  const ChatSupportState({
    this.phonenumber = '',
    this.isValid = false,
  });

  factory ChatSupportState.fromModel(ChatSupportModel model) {
    return ChatSupportState(
      phonenumber: model.phonenumber,
      isValid: true,
    );
  }

  ChatSupportState copyWith({
    String? phonenumber,
    bool? isValid,
  }) {
    return ChatSupportState(
      phonenumber: phonenumber ?? this.phonenumber,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        phonenumber,
        isValid,
      ];
}
