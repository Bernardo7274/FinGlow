import 'package:FinGlow/domain/models/ChatSupport/chat_support_model.dart';
import 'package:FinGlow/domain/repositories/ChatSupport/chat_supportD_repositories_impl.dart';

class LoadEventData {
  final ChatSupportRepository repository;
  LoadEventData(this.repository);
  
  Future<ChatSupportModel> call() async{
    final eventData = await repository.loadFormData();
    if (eventData.phonenumber.isEmpty) {
      throw Exception('No puede ser nulo el número de contacto.');
    }
    return eventData;
  }
}