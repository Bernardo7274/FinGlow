// ignore_for_file: unnecessary_string_interpolations

import 'package:FinGlow/data/repositories/SeminarsAndEvents/seminarsandevents_repository_impl.dart';
import 'package:FinGlow/domain/usecases/SeminarsAndEvents/load_event_data.dart';
import 'package:FinGlow/presentation/bloc/SeminarsAndEvents/seminarsandevents_bloc.dart';
import 'package:FinGlow/presentation/bloc/SeminarsAndEvents/seminarsandevents_event.dart';
import 'package:FinGlow/presentation/bloc/SeminarsAndEvents/seminarsandevents_state.dart';
import 'package:FinGlow/presentation/views/SeminarView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeminarSeminarView extends StatefulWidget {
  const SeminarSeminarView({super.key});

  @override
  State<SeminarSeminarView> createState() => _SeminarSeminarViewState();
}

class _SeminarSeminarViewState extends State<SeminarSeminarView> {
  int selectedIndex = 0;

  void _recordatoriosDialog() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SeminarView()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventBloc(
        LoadEventData(SeminarsandeventsRepositoryImpl()),
      )..add(LoadEventDataEvent()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Seminarios',
            style: TextStyle(
              color: Colors.white,
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
              stops: [0.3, 0.7],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<EventBloc, EventState>(
              builder: (context, state) {
                // Your loaded content here
                return ListView(
                  children: <Widget>[
                    const Text(
                      '¡Emprendedor! Descubre las últimas tendencias, estrategias y herramientas esenciales para el éxito de tu negocio.',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w200,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Buscar seminario',
                          hintStyle: const TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                          ),
                          suffixIcon: const ImageIcon(
                            AssetImage('assets/icons/icon13.png'),
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding:
                              const EdgeInsets.only(bottom: 10, left: 30),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(64, 162, 241, 100),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(64, 162, 241, 100),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Por categoría',
                      style: TextStyle(
                        color: Color.fromRGBO(34, 221, 187, 1),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryTile(
                      context,
                      'Innovación y tecnología',
                      'assets/icons/icon17.png',
                      [
                        '· Tendencias tecnológicas emergentes.',
                        '· Aplicaciones de inteligencia artificial en negocios.',
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryTile(
                      context,
                      '${state.categoryname}',
                      'assets/icons/icon18.png',
                      [
                        '· Estrategias de crecimiento empresarial.',
                        '· Modelos de negocio y planificación estratégica.',
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryTile(
                      context,
                      'Finanzas y economía',
                      'assets/icons/icon19.png',
                      [
                        '· Gestión financiera para startups.',
                        '· Fuentes de financiamiento y capital de riesgo.',
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryTile(
                      context,
                      'Marketing y ventas',
                      'assets/icons/icon20.png',
                      [
                        '· Estrategias de marketing digital.',
                        '· Técnicas de venta y expansión de mercado.',
                      ],
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

  Widget _buildCategoryTile(BuildContext context, String title, String iconPath,
      List<String> descriptions) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: _recordatoriosDialog,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(64, 162, 241, 100), width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      AssetImage(iconPath),
                      size: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color.fromRGBO(34, 221, 187, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Transform.rotate(
                      angle: 3.14159, // 180 degrees in radians
                      child: const ImageIcon(
                        AssetImage('assets/icons/icon16.png'),
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                for (var desc in descriptions)
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
