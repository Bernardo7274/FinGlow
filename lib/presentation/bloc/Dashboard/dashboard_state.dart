import 'package:equatable/equatable.dart';
import 'package:FinGlow/domain/models/Dashboard/financial_dashboard_model.dart';

class FinancialState extends Equatable {
  final String reportscategory;
  final double incomeamount;
  final double amountexpenses;
  final bool isValid;

  const FinancialState({
    this.reportscategory = '',
    this.incomeamount = 0.0,
    this.amountexpenses = 0.0,
    this.isValid = false,
  });

  factory FinancialState.fromModel(DashboardModel model) {
    return FinancialState(
      reportscategory: model.reportscategory,
      incomeamount: model.incomeamount,
      amountexpenses: model.amountexpenses,
      isValid: true,
    );
  }

  FinancialState copyWith({
    String? reportscategory,
    double? incomeamount,
    double? amountexpenses,
    bool? isValid,
  }) {
    return FinancialState(
      reportscategory: reportscategory ?? this.reportscategory,
      incomeamount: incomeamount ?? this.incomeamount,
      amountexpenses: amountexpenses ?? this.amountexpenses,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        reportscategory,
        incomeamount,
        amountexpenses,
        isValid,
      ];
}
