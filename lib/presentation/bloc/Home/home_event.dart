import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class FetchHomeDataEvent extends HomeEvent {}

class UpdateProfilePictureEvent extends HomeEvent {
  final String newProfilePicture;

  const UpdateProfilePictureEvent(this.newProfilePicture);

  @override
  List<Object?> get props => [newProfilePicture];
}