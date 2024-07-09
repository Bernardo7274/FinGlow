import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';
import 'package:dio/dio.dart';
import 'package:FinGlow/domain/models/Register/register_model.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final Dio _dio = Dio();

  @override
  Future<dynamic> submitUser(RegisterModel register) async {
    try {
      final response = await _dio.post('TODO: url', data: register.toJson());
      return response;
    } catch (e) {
      print(e);
      throw Exception('Failed to submit register');
    }
    // final response = await rootBundle.loadString('assets/json_data/register_data.json');
    // final data = json.decode(response);
    // print(data);
    // return RegisterModel.fromJson(data);
  }
}
