// ignore_for_file: avoid_print, unnecessary_string_interpolations

import 'package:fin_glow/data/repositories/SeminarsAndEvents/seminarsandevents_repository_impl.dart';
import 'package:fin_glow/domain/usecases/SeminarsAndEvents/load_event_data.dart';
import 'package:fin_glow/presentation/bloc/SeminarsAndEvents/seminarsandevents_bloc.dart';
import 'package:fin_glow/presentation/bloc/SeminarsAndEvents/seminarsandevents_event.dart';
import 'package:fin_glow/presentation/bloc/SeminarsAndEvents/seminarsandevents_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeminarView extends StatefulWidget {
  const SeminarView({super.key});

  @override
  State<SeminarView> createState() => _SeminarViewState();
}

class _SeminarViewState extends State<SeminarView> {
  int selectedIndex = 0;

  void _unoDialog() {
    print("Primero");
  }

  void _dosDialog() {
    print("Segundo");
  }

  void _tresDialog() {
    print("Tercero");
  }

  void _cuatroDialog() {
    print("Cuarto");
  }

  void _cincoDialog() {
    print("Quinto");
  }

  void _seisDialog() {
    print("Sexto");
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
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Desarrollo de negocios',
            style: TextStyle(color: Colors.white),
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
                          contentPadding: const EdgeInsets.only(bottom: 10, left: 30),
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
                    _buildCategoryCard(
                      'Modelos de negocio sostenibles',
                      'Laura Morales, Fundadora de GreenBiz',
                      'assets/images/User1.png',
                      _unoDialog,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      'Estrategias de crecimiento',
                      'María González, CEO de Business Growth',
                      'assets/images/User2.png',
                      _dosDialog,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      '${state.eventname}',
                      '${state.westname}, ${state.occupation}',
                      'assets/images/User3.png',
                      _tresDialog,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      'Ventas efectivas',
                      'Juan Pérez, Consultor de ventas',
                      'assets/images/User4.png',
                      _cuatroDialog,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      'Innovación en el negocio',
                      'Diana García, Innovadora corporativa',
                      'assets/images/User5.png',
                      _cincoDialog,
                    ),
                    const SizedBox(height: 20),
                    _buildCategoryCard(
                      'Gestión de tiempo y productividad',
                      'Ana Torres, Experta en productividad',
                      'assets/images/User6.png',
                      _seisDialog,
                    ),
                    //... resto del código
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    String title,
    String subtitle,
    String imagePath,
    VoidCallback onTap,
  ) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(10, 89, 89, 0.5),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(10, 89, 89, 0.5),
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(imagePath),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color.fromRGBO(64, 162, 241, 1),
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Transform.rotate(
                      angle: 3.14159,
                      child: const ImageIcon(
                        AssetImage('assets/icons/icon16.png'),
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
