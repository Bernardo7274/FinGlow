import 'package:FinGlow/domain/models/Seminars_and_events/seminarsandevents_model.dart';
import 'package:FinGlow/domain/repositories/SeminarsAndEvents/seminarsandeventsD_repository.dart';

class LoadEventData {
  final SeminarsandeventsRepositoy repositoy;

  LoadEventData(this.repositoy);
  Future<EventModel> call() async {
    final eventData = await repositoy.loadEventData();

    // Validaciones
    if (eventData.eventtype.isEmpty) {
      throw Exception('El tipo de evento no debe estar vacío.');
    }
    if (!_isValidEventType(eventData.eventtype)) {
      throw Exception('El tipo de evento no es válido.');
    }
    if (eventData.categoryname.isEmpty) {
      throw Exception('El nombre de la categoría no debe estar vacío.');
    }
    if (!_isValidCategoryName(eventData.categoryname)) {
      throw Exception('El nombre de la categoría no es válido.');
    }
    if (eventData.eventname.isEmpty) {
      throw Exception('El nombre del evento no debe estar vacío.');
    }
    if (eventData.westname.isEmpty) {
      throw Exception('El nombre del presentador no debe estar vacío.');
    }
    if (eventData.occupation.isEmpty) {
      throw Exception('La ocupación no debe estar vacía.');
    }
    if (eventData.platform.isEmpty) {
      throw Exception('La plataforma no debe estar vacía.');
    }
    if (!_isFutureDate(eventData.eventdate)) {
      throw Exception('La fecha del evento debe ser una fecha futura.');
    }
    if (eventData.eventday.isEmpty) {
      throw Exception('El día del evento no debe estar vacío.');
    }

    return eventData;
  }

  bool _isValidEventType(String eventtype) {
    // Aquí defines los tipos de eventos válidos
    const validEventTypes = ['Seminario', 'Evento'];
    return validEventTypes.contains(eventtype);
  }

  bool _isValidCategoryName(String categoryname) {
    // Aquí defines las categorías válidas
    const validCategories = [
      'Innovación y tecnología',
      'Desarrollo de negocios',
      'Finanzas y economía',
      'Marketing y ventas'
    ];
    return validCategories.contains(categoryname);
  }

  bool _isFutureDate(DateTime eventdate) {
    // Compara la fecha del evento con la fecha actual
    return eventdate.isAfter(DateTime.now());
  }
}