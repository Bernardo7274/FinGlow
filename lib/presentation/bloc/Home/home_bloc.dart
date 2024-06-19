import 'package:FinGlow/presentation/bloc/Home/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FinGlow/domain/models/Home/home_model.dart';
import 'package:FinGlow/domain/usecases/SeminarsAndEvents/load_event_data.dart';

// Definir el estado del bloc
enum HomeBlocStatus { initial, loading, loaded, error }

class HomeBlocState {
  final HomeModel? homeData;
  final HomeBlocStatus status;

  HomeBlocState({
    this.homeData,
    required this.status,
  });

  HomeBlocState.initial() : this(status: HomeBlocStatus.initial);
  HomeBlocState.loading() : this(status: HomeBlocStatus.loading);
  HomeBlocState.loaded(HomeModel homeData)
      : this(status: HomeBlocStatus.loaded, homeData: homeData);
  HomeBlocState.error() : this(status: HomeBlocStatus.error);
}

// Implementar el bloc
class HomeBloc extends Bloc<HomeBloc, HomeBlocState> {
  final LoadEventData loadEventData;

  HomeBloc({required this.loadEventData}) : super(HomeBlocState.initial());

  Stream<HomeBlocState> mapEventToState(HomeBloc event) async* {
    if (event is FetchHomeDataEvent) {
      yield HomeBlocState.loading();
      try {
        final homeData = await loadEventData.call();
        yield HomeBlocState.loaded(homeData as HomeModel);
      } catch (e) {
        yield HomeBlocState.error();
      }
    }
  }
}
