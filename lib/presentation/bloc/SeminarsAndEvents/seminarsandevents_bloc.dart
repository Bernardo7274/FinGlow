import 'package:fin_glow/domain/usecases/SeminarsAndEvents/load_event_data.dart' as usecase;
import 'package:fin_glow/presentation/bloc/SeminarsAndEvents/seminarsandevents_event.dart';
import 'package:fin_glow/presentation/bloc/SeminarsAndEvents/seminarsandevents_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class EventBloc extends Bloc<EventEvent, EventState> {
  final usecase.LoadEventData loadEventData;

  EventBloc(this.loadEventData) : super(const EventState()) {
    on<LoadEventDataEvent>((event, emit) async {
      try {
        final eventData = await loadEventData();
        emit(EventState.fromModel(eventData));
      } catch (e) {
        emit(state.copyWith(isValid: false));
        // Handle the exception if needed
      }
    });

    on<EventTypeChanged>((event, emit) {
      emit(state.copyWith(eventtype: event.eventtype, isValid: _validateForm(state.copyWith(eventtype: event.eventtype))));
    });
    on<CategoryNameChanged>((event, emit) {
      emit(state.copyWith(categoryname: event.categoryname, isValid: _validateForm(state.copyWith(categoryname: event.categoryname))));
    });
    on<EventNameChanged>((event, emit) {
      emit(state.copyWith(eventname: event.eventname, isValid: _validateForm(state.copyWith(eventname: event.eventname))));
    });
    on<WestNameChanged>((event, emit) {
      emit(state.copyWith(westname: event.westname, isValid: _validateForm(state.copyWith(westname: event.westname))));
    });
    on<OccupationChanged>((event, emit) {
      emit(state.copyWith(occupation: event.occupation, isValid: _validateForm(state.copyWith(occupation: event.occupation))));
    });
    on<PlatformChanged>((event, emit) {
      emit(state.copyWith(platform: event.platform, isValid: _validateForm(state.copyWith(platform: event.platform))));
    });
    on<EventDateChanged>((event, emit) {
      emit(state.copyWith(eventdate: event.eventdate, isValid: _validateForm(state.copyWith(eventdate: event.eventdate))));
    });
    on<EventDayChanged>((event, emit) {
      emit(state.copyWith(eventday: event.eventday, isValid: _validateForm(state.copyWith(eventday: event.eventday))));
    });
    on<EventSubmitted>((event, emit) {
      if (state.isValid) {
        // Handle event submission logic
      }
    });
  }

  bool _validateForm(EventState state) {
    return state.eventtype.isNotEmpty &&
        state.categoryname.isNotEmpty &&
        state.eventname.isNotEmpty &&
        state.westname.isNotEmpty &&
        state.occupation.isNotEmpty &&
        state.platform.isNotEmpty &&
        state.eventdate != null &&
        state.eventdate!.isAfter(DateTime.now()) &&
        state.eventday.isNotEmpty;
  }
}
