import 'package:fin_glow/domain/models/Home/home_model.dart';

abstract class HomeRepository{
  Future<HomeModel> loadEventData();
}