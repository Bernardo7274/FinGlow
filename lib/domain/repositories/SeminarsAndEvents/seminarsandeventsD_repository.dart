import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';

abstract class SeminarsandeventsRepositoy{
  Future<EventModel> loadEventData();
}