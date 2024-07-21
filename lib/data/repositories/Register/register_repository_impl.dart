import 'package:dio/dio.dart';
import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';
import 'package:FinGlow/domain/models/Register/register_model.dart';
import 'package:FinGlow/logger.dart';  // Importa el logger

class RegisterRepositoryImpl implements RegisterRepository {
  final Dio _dio = Dio();
  final String url = 'http://apimoviles-production.up.railway.app';

  @override
  Future<dynamic> submitUser(RegisterModel register) async {
    try {
      final response = await _dio.post('$url/users', data: register.toJson());
      return response.data; // Retornar solo los datos de la respuesta
    } on DioException catch (e) {
      if (e.response != null) {
        AppLogger.error('Dio error: ${e.response!.data}', e);  // Usa el logger para errores específicos de Dio
        throw Exception('Failed to submit register: ${e.response!.data}');
      } else {
        AppLogger.error('Error sending request: ${e.message}', e);  // Usa el logger para errores generales
        throw Exception('Failed to submit register: ${e.message}');
      }
    } catch (e) {
      AppLogger.error('Unexpected error: $e', e);  // Usa el logger para errores inesperados
      throw Exception('Failed to submit register');
    }
  }
}
