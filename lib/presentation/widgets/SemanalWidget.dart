import 'package:fin_glow/data/repositories/Dashboard/dashboard_repositories_impl.dart';
import 'package:fin_glow/domain/usecases/Dashboard/load_dashboard_data.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_bloc.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_event.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_state.dart';
import 'package:fin_glow/presentation/widgets/BarChartSample2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Asegúrate de tener este import si usas BlocProvider

class SemanalWidget extends StatelessWidget {
  const SemanalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinancialBloc(
        LoadDashboardData(DashboardRepositoryImpl()),
      )..add(LoadFinancialDataEvent()),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        color: Colors.transparent,
        child: BlocBuilder<FinancialBloc, FinancialState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 1),
                const Text(
                  'Periodo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage('assets/icons/icon14.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Ene 01 2023',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      ' -',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    ImageIcon(
                      AssetImage('assets/icons/icon14.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Enero 05 2024',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildAmountIndicator('Ingresos', state.incomeamount, Colors.blue),
                    const SizedBox(width: 120),
                    _buildAmountIndicator('Egresos', state.amountexpenses, Colors.teal),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.white,
                  thickness: 2.0,
                  height: 2.0, // Divider thickness and the space it occupies in the main axis.
                ),
                const SizedBox(height: 1),
                const BarChartSample2(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildAmountIndicator(String label, String amount, Color color) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.square_rounded, color: color, size: 20.0),
            const SizedBox(width: 8.0),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          amount,
          style: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
