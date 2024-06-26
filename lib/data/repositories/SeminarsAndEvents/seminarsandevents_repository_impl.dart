import 'dart:convert';
import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';
import 'package:FinGlow/domain/repositories/SeminarsAndEvents/seminarsandeventsD_repository.dart';
import 'package:flutter/services.dart';

class SeminarsandeventsRepositoryImpl implements SeminarsandeventsRepositoy{
  @override
  Future<EventModel> loadEventData() async{
    final response = await rootBundle.loadString('json_data/seminarsandevents_data.json');
    final data = json.decode(response);
    print(data);
    return EventModel.fromJson(data);
  }
}