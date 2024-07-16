import 'package:dio/dio.dart';
import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';
import 'package:FinGlow/domain/models/Register/register_model.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final Dio _dio = Dio();
  final String url = 'http://apimoviles-production.up.railway.app';

  @override
  Future<dynamic> submitUser(RegisterModel register) async {
    try {
      final response = await _dio.post('$url/users', data: register.toJson());
      return response.data; // Retornar solo los datos de la respuesta
    } catch (e) {
      print(e);
      throw Exception('Failed to submit register');
    }
  }
}