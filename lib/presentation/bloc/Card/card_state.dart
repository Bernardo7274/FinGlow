import 'package:equatable/equatable.dart';
import 'package:FinGlow/domain/models/Card/card_model.dart';

class CardState extends Equatable {
  final int? cardnumber;
  final DateTime? duedate;
  final int? cvv;
  final String movementtype;
  final double movementamount;
  final String? movementdate;
  final bool isValid;

  const CardState({
    this.cardnumber,
    this.duedate,
    this.cvv,
    this.movementtype = '',
    this.movementamount = 0.0,
    this.movementdate,
    this.isValid = false,
  });

  factory CardState.fromModel(CardModel model) {
    return CardState(
      cardnumber: model.cardnumber,
      duedate: model.duedate,
      cvv: model.cvv,
      movementtype: model.movementtype,
      movementamount: model.movementamount,
      movementdate: model.movementdate,
      isValid: true,
    );
  }

  CardState copyWith({
    int? cardnumber,
    DateTime? duedate,
    int? cvv,
    String? movementtype,
    double? movementamount,
    String? movementdate,
    bool? isValid,
  }) {
    return CardState(
      cardnumber: cardnumber ?? this.cardnumber,
      duedate: duedate ?? this.duedate,
      cvv: cvv ?? this.cvv,
      movementtype: movementtype ?? this.movementtype,
      movementamount: movementamount ?? this.movementamount,
      movementdate: movementdate ?? this.movementdate,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        cardnumber,
        duedate,
        cvv,
        movementtype,
        movementamount,
        movementdate,
        isValid,
      ];
}
