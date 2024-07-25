import 'package:fin_glow/data/repositories/Dashboard/dashboard_repositories_impl.dart';
import 'package:fin_glow/domain/usecases/Dashboard/load_dashboard_data.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_bloc.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_event.dart';
import 'package:fin_glow/presentation/bloc/Dashboard/dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fin_glow/presentation/widgets/AnualWidget.dart';
import 'package:fin_glow/presentation/widgets/MensualWidget.dart';
import 'package:fin_glow/presentation/widgets/SemanalWidget.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinancialBloc(
        LoadDashboardData(DashboardRepositoryImpl()),
      )..add(LoadFinancialDataEvent()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Panel financiero',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(1, 19, 48, 1),
          elevation: 0,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(1, 19, 48, 1),
                Color.fromRGBO(4, 38, 92, 1),
              ],
              stops: [
                0.3,
                0.7,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<FinancialBloc, FinancialState>(
              builder: (context, state) {
                return Column(
                  children: <Widget>[
                    const SizedBox(height: 40), // Añadir espacio desde la parte superior
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 38, 92, 1),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              menuButton(state.reportscategory, 0),
                              menuButton(state.reportscategory, 1),
                              menuButton(state.reportscategory, 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Center(
                          child: _getContentForIndex(selectedIndex),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget menuButton(String title, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: selectedIndex == index
                ? const Color.fromRGBO(45, 166, 144, 1)
                : Colors.transparent,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: selectedIndex == index ? Colors.white : Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getContentForIndex(int index) {
    switch (index) {
      case 0:
        return const SemanalWidget();
      case 1:
        return const MensualWidget();
      case 2:
        return const AnualWidget();
      default:
        return const Text('Selecciona una opción');
    }
  }
}
