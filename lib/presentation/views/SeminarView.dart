import 'package:flutter/material.dart';

class SeminarView extends StatefulWidget {
  const SeminarView({super.key});

  @override
  State<SeminarView> createState() => _SeminarView();
}

class _SeminarView extends State<SeminarView> {
  int selectedIndex = 0;

  // ignore: non_constant_identifier_names
  void _UnoDialog() {
    // ignore: avoid_print
    print("Primero");
  }

  // ignore: non_constant_identifier_names
  void _DosDialog() {
    // ignore: avoid_print
    print("Segundo");
  }

  // ignore: non_constant_identifier_names
  void _TresDialog() {
    // ignore: avoid_print
    print("Tercero");
  }

  // ignore: non_constant_identifier_names
  void _CuatroDialog() {
    // ignore: avoid_print
    print("Cuarto");
  }

  // ignore: non_constant_identifier_names
  void _CincoDialog() {
    // ignore: avoid_print
    print("Quinto");
  }

  // ignore: non_constant_identifier_names
  void _SeisDialog() {
    // ignore: avoid_print
    print("Sexto");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Desarrollo de negocios',
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
          child: ListView(
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
                height: 40, // Controla la altura del TextField
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15, // Tamaño del texto del TextField
                  ),
                  decoration: InputDecoration(
                    hintText: 'Buscar seminario',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize:
                          15, // Tamaño del texto de sugerencia del TextField
                    ),
                    suffixIcon: const ImageIcon(
                      AssetImage('assets/icons/icon13.png'),
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    contentPadding: const EdgeInsets.only(
                        bottom: 10, left: 30), // Ajusta la posición del texto
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(
                            64, 162, 241, 100), // Color del borde
                        width: 2, // Ancho del borde
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(64, 162, 241,
                            100), // Color del borde cuando el TextField está enfocado
                        width: 2, // Ancho del borde
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
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _UnoDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User1.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Modelos de negocio sostenibles',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Laura Morales, Fundadora de GreenBiz',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _DosDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User2.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estrategias de crecimiento',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'María González, CEO de Business Growth',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _TresDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User3.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gestión para NO financieros',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Carlos Ruiz, Experto en finanzas',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _CuatroDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User4.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ventas efectivas',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Juan Pérez, Consultor de ventas',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _CincoDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User5.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Innovación en el  negocio',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Diana García, Innovadora corporativa',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _SeisDialog,
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
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/User6.png'),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gestión de tiempo y productividad',
                                    style: TextStyle(
                                      color: Color.fromRGBO(64, 162, 241, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Ana Torres, Experta en productividad',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1), // Un azul estándar
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Transform.rotate(
                                angle:
                                    3.14159, // Pi radianes, que equivale a 180 grados
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
              ),
              //... resto del código
            ],
          ),
        ),
      ),
    );
  }
}
