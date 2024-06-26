import 'package:FinGlow/domain/models/Card/card_model.dart';
import 'package:FinGlow/domain/repositories/Card/cardD_repository.dart';

class LoadEventData {
  final CardRepository repository;

  LoadEventData(this.repository);

  Future<CardModel> call() async {
    final eventdata = await repository.loadEventData();
    
    if (eventdata.cardnumber.toString().length < 16) {
      throw Exception('El número de tarjeta no puede ser menor a 16 dígitos.');
    }
    
    if (eventdata.cvv.toString().length != 3) {
      throw Exception('El CVV debe tener exactamente 3 dígitos.');
    }

    if (eventdata.movementtype != 'Compra' && eventdata.movementtype != 'Retiro') {
      throw Exception('El tipo de movimiento no es válido.');
    }

    if (eventdata.movementamount <= 0) {
      throw Exception('El monto del movimiento debe ser positivo.');
    }

    if (eventdata.duedate.isBefore(DateTime.now())) {
      throw Exception('La fecha de vencimiento de la tarjeta debe ser futura.');
    }

    if (eventdata.movementdate.isEmpty) {
      throw Exception('La fecha del movimiento no puede ser futura.');
    }
    return eventdata;
  }
}