import 'package:fin_glow/domain/models/Card/card_model.dart';

abstract class CardRepository{
  Future<CardModel> loadEventData();
}