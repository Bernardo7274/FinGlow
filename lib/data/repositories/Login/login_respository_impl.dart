import 'dart:convert';
import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:FinGlow/domain/repositories/Login/login_repository.dart';
import 'package:flutter/services.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<LoginModel> loginFormData() async {
    final response = await rootBundle.loadString('json_data/Login/login.json');
    final data = json.decode(response);
    print(data);
    return LoginModel.fromJson(data);
  }
}