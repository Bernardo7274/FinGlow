import 'dart:convert';
import 'package:FinGlow/domain/models/Card/card_model.dart';
import 'package:FinGlow/domain/repositories/Card/cardD_repository.dart';
import 'package:flutter/services.dart';

class CardRepositoryImpl implements CardRepository{
  @override
  Future<CardModel> loadEventData() async{
    final response = await rootBundle.loadString('assets/json_data/card_data.json');
    final data = json.decode(response);
    print(data);
    return CardModel.fromJson(data);
  }
}