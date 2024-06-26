import 'dart:convert';
import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';
import 'package:FinGlow/domain/repositories/ChatSupport/chat_supportD_repositories_impl.dart';
import 'package:flutter/services.dart';

class ChatSupportRepositoryImpl implements ChatSupportRepository{
  @override
  Future<ChatSupportModel> loadFormData() async{
    final response = await rootBundle.loadString('json_data/chat_support_data.json');
    final data = json.decode(response);
    print(data);
    return ChatSupportModel.fromJson(data);
  }
}