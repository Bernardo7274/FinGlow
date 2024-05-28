import 'dart:convert';
import 'package:FinGlow/domain/models/Home/home_model.dart';
import 'package:FinGlow/domain/repositories/Home/homeD_repository.dart';
import 'package:flutter/services.dart';

class HomeRepositoryImpl implements HomeRepository{
  @override
  Future<HomeModel> loadEventData() async{
    final response = await rootBundle.loadString('assets/json_data/home_data.json');
    final data = json.decode(response);
    print(data);
    return HomeModel.fromJson(data);
  }
}