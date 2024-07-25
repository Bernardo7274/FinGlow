import 'package:fin_glow/domain/models/ChatSupport/chat_support_model.dart';

abstract class ChatSupportRepository {
  Future<ChatSupportModel> loadFormData();
}