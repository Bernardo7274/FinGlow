import 'package:FinGlow/data/repositories/Home/home_repository_impl.dart';
import 'package:FinGlow/domain/usecases/Home/home_usercase.dart';
import 'package:FinGlow/presentation/bloc/Home/home_bloc.dart';
import 'package:FinGlow/presentation/bloc/Home/home_event.dart';
import 'package:FinGlow/presentation/bloc/Home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:FinGlow/presentation/widgets/CardCarouselWidget.dart';
import 'package:FinGlow/presentation/views/Card/basic_card.dart';
import 'package:FinGlow/presentation/views/deposit_money.dart';
import 'package:FinGlow/presentation/views/Card/gold_card.dart';
import 'package:FinGlow/presentation/views/interbank_clabe.dart';
import 'package:FinGlow/presentation/views/transfer_money.dart';
import 'package:FinGlow/presentation/widgets/LastMovementsWidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget _currentView = Container();
  int selectedIndex = 0;
  final double progressValue = 0.7;

  List<Map<String, dynamic>> _buttonsInfo = []; // Declaración inicial vacía.

  @override
  void initState() {
    super.initState();
    _buttonsInfo = [
      {
        'imagePath': 'assets/icons/icon1.png',
        'text': 'Ingresar',
        'action': () => navigateToView(const DepositMoneyView()),
      },
      {
        'imagePath': 'assets/icons/icon2.png',
        'text': 'Transferir',
        'action': () => navigateToView(const TransferMoneyView()),
      },
      {
        'imagePath': 'assets/icons/icon3.png',
        'text': 'CLABE',
        'action': () => navigateToView(const InterbankClabeView()),
      },
    ];
  }

  void navigateToView(Widget view) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => view));
  }

  void handleCardTap(int index) {
    setState(() {
      switch (index) {
        case 0:
          _currentView = const BasicCardView();
          break;
        case 1:
          _currentView = const GoldCardView();
          break;
      }
    });
  }

  Widget _buildImageButton(Map<String, dynamic> buttonInfo) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(64, 162, 241, 150),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
      ),
      child: TextButton(
        onPressed: buttonInfo['action'],
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          disabledForegroundColor: Colors.grey.withOpacity(0.38),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              buttonInfo['imagePath'],
              width: 30,
              height: 30,
            ),
            Text(
              buttonInfo['text'],
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        LoadEventData(HomeRepositoryImpl()),
      )..add(LoadHomeDataEvent()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ListView(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/User.png'),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  '¡Bienvenido de nuevo!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  state.username,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                         ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        const Text(
                          'Monto disponible',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Text(
                            state.movementamount,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.blueAccent.withOpacity(0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
                        value: progressValue,
                        minHeight: 20,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _buttonsInfo.map((buttonInfo) => _buildImageButton(buttonInfo)).toList(),
                      ),
                    ),
                    CardCarouselWidget(onCardTapped: handleCardTap),
                    Container(
                      child: _currentView,
                    ),
                    const SizedBox(height: 16),
                    const LastMovementsWidget(),
                    // Otros Widgets aquí...
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}