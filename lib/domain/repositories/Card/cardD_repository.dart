import 'package:FinGlow/domain/models/Card/card_model.dart';

abstract class CardRepository{
  Future<CardModel> loadEventData();
}