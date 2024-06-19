import 'package:equatable/equatable.dart';
import 'package:FinGlow/domain/models/Home/home_model.dart';

// Definir los posibles estados del bloc
enum HomeBlocStatus { initial, loading, loaded, error }

// Definir el estado del bloc
class HomeBlocState extends Equatable {
  final HomeModel? homeData;
  final HomeBlocStatus status;

  const HomeBlocState({
    this.homeData,
    required this.status,
  });

  // Estados iniciales predefinidos
  factory HomeBlocState.initial() {
    return HomeBlocState(status: HomeBlocStatus.initial);
  }

  factory HomeBlocState.loading() {
    return HomeBlocState(status: HomeBlocStatus.loading);
  }

  factory HomeBlocState.loaded(HomeModel homeData) {
    return HomeBlocState(status: HomeBlocStatus.loaded, homeData: homeData);
  }

  factory HomeBlocState.error() {
    return HomeBlocState(status: HomeBlocStatus.error);
  }

  @override
  List<Object?> get props => [homeData, status];
}
