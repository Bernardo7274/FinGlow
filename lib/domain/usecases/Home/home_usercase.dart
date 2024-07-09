import 'package:FinGlow/domain/models/Home/home_model.dart';
import 'package:FinGlow/domain/repositories/Home/homeD_repository.dart';

class LoadEventData{
  final HomeRepository repository;
  
  LoadEventData(this.repository);
  Future<HomeModel> call() async {
    final eventData = await repository.loadEventData();
    print(eventData.toString());
    if (eventData.username.isEmpty) {
     print('El usuario no puede estar vacío.');
    }
    // if (eventData.amountavailable == 0.0) {
    //  print('El monto no puede ser nulo.');
    // }
    if (eventData.movementtype.isEmpty) {
     print('El tipo de movimiento no puede ser nulo.');
    }
    if (eventData.movementamount == 0.0) {
     print('El monto del movimiento no puede ser nulo.');
    }
    if (eventData.movementdate == "") {
     print('El tipo de dato no es el correcto.');
    }
    // if (eventData.profilepicture.isEmpty) {
    //  print('La foto de perfil, no puede estar vacía.');
    // }
    return eventData;
  }
}