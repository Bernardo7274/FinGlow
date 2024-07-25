import 'package:equatable/equatable.dart';
import 'package:fin_glow/domain/models/Home/home_model.dart';

class HomeState extends Equatable {
  final String username;
  final double amountavailable;
  final String movementtype;
  final String movementamount;
  final String movementdate;
  final String profilepicture;
  final bool isValid;

  const HomeState({
    this.username = '',
    this.amountavailable = 0.0,
    this.movementtype = '',
    this.movementamount = '',
    required this.movementdate,
    this.profilepicture = '',
    this.isValid = false,
  });

  factory HomeState.fromModel(HomeModel model) {
    return HomeState(
      username: model.username,
      amountavailable: model.amountavailable,
      movementtype: model.movementtype,
      movementamount: model.movementamount,
      movementdate: model.movementdate,
      profilepicture: model.profilepicture,
      isValid: true,
    );
  }

  HomeState copyWith({
    String? username,
    double? amountavailable,
    String? movementtype,
    String? movementamount,
    String? movementdate,
    String? profilepicture,
    bool? isValid,
  }) {
    return HomeState(
      username: username ?? this.username,
      amountavailable: amountavailable ?? this.amountavailable,
      movementtype: movementtype ?? this.movementtype,
      movementamount: movementamount ?? this.movementamount,
      movementdate: movementdate ?? this.movementdate,
      profilepicture: profilepicture ?? this.profilepicture,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        username,
        amountavailable,
        movementtype,
        movementamount,
        movementdate,
        profilepicture,
        isValid,
      ];
}
