import 'package:dio/dio.dart';
import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:FinGlow/domain/repositories/Login/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepositoryImpl implements LoginRepository {
  final Dio _dio = Dio();
  final String url = 'http://apimoviles-production.up.railway.app';

  @override
  Future<void> loginUser(LoginModel login) async {
    try {
      final response = await _dio.post('$url/auth/login', data: login.toJson());

      if (response.statusCode == 200) {
        String token = response.data['access_token'];
        await _saveToken(token);
      }
    } on DioException catch (e) {
      print(e);
      throw Exception('Failed to login');
    }
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }
}
