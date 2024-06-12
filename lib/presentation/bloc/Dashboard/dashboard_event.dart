import 'package:equatable/equatable.dart';

abstract class FinancialEvent extends Equatable {
  const FinancialEvent();

  @override
  List<Object?> get props => [];
}

class LoadFinancialDataEvent extends FinancialEvent {}

class ReportsCategoryChanged extends FinancialEvent {
  final String reportscategory;

  const ReportsCategoryChanged(this.reportscategory);

  @override
  List<Object?> get props => [reportscategory];
}

class IncomeAmountChanged extends FinancialEvent {
  final double incomeamount;

  const IncomeAmountChanged(this.incomeamount);

  @override
  List<Object?> get props => [incomeamount];
}

class AmountExpensesChanged extends FinancialEvent {
  final double amountexpenses;

  const AmountExpensesChanged(this.amountexpenses);

  @override
  List<Object?> get props => [amountexpenses];
}

class FinancialSubmitted extends FinancialEvent {}
