import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fin_glow/domain/usecases/Dashboard/load_dashboard_data.dart' as usecase;
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_state.dart';

class FinancialBloc extends Bloc<FinancialEvent, FinancialState> {
  final usecase.LoadDashboardData loadFinancialData;

  FinancialBloc(this.loadFinancialData) : super(const FinancialState()) {
    on<LoadFinancialDataEvent>((event, emit) async {
      final financialData = await loadFinancialData();
      emit(FinancialState.fromModel(financialData));
    });

    on<ReportsCategoryChanged>((event, emit) {
      emit(state.copyWith(reportscategory: event.reportscategory));
    });
    on<IncomeAmountChanged>((event, emit) {
      emit(state.copyWith(incomeamount: event.incomeamount));
    });
    on<AmountExpensesChanged>((event, emit) {
      emit(state.copyWith(amountexpenses: event.amountexpenses));
    });
    on<FinancialSubmitted>((event, emit) {
      if (state.isValid) {
        // Handle financial submission logic
      }
    });
  }

  bool _validateForm() {
    return state.reportscategory.isNotEmpty &&
        double.tryParse(state.incomeamount) != null &&
        double.tryParse(state.amountexpenses) != null;
  }
}
