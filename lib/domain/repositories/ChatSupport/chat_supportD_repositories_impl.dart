import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';

abstract class ChatSupportRepository {
  Future<ChatSupportModel> loadFormData();
}