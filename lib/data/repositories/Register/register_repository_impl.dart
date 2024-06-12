import 'dart:convert';
import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';
import 'package:flutter/services.dart';
import 'package:FinGlow/domain/models/Register/register_model.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  @override
  Future<RegisterModel> loadRegisterData() async {
    final response = await rootBundle.loadString('assets/json_data/register_data.json');
    final data = json.decode(response);
    print(data);
    return RegisterModel.fromJson(data);
  }
}
