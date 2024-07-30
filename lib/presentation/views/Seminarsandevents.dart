import 'package:FinGlow/presentation/views/SeminarSeminarView.dart';
import 'package:flutter/material.dart';

class SeminarsandeventsView extends StatefulWidget {
  const SeminarsandeventsView({super.key});

  @override
  State<SeminarsandeventsView> createState() => _SeminarsandeventsView();
}

class _SeminarsandeventsView extends State<SeminarsandeventsView> {
  int selectedIndex = 0;

  // ignore: non_constant_identifier_names
  void _RecordatoriosDialog() {
    // ignore: avoid_print
    print("Recordatorios");
  }

  // ignore: non_constant_identifier_names
  void _SeminariosDialog() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SeminarSeminarView()));
  }

  // ignore: non_constant_identifier_names
  void _EventosDialog() {
    // ignore: avoid_print
    print("Proximos eventos");
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
          'Seminarios y Eventos',
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
                '¡Explora un mundo de conocimiento y oportunidades con FinGlow!',
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
                    hintText: 'Buscar seminario o evento',
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
              // Aquí empieza el código nuevo del diseño de recordatorio
              const SizedBox(height: 20),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                      10), // Match this with your container's border radius
                  onTap: _RecordatoriosDialog,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(64, 162, 241, 100),
                          width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/icon7.png'),
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Recordatorios',
                              style: TextStyle(
                                color: Color.fromRGBO(34, 221, 187, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Gestión de riesgos - Daniel López (Zoom):',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Evento próximo en 3 días.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                      10), // Match this with your container's border radius
                  onTap: _SeminariosDialog,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(64, 162, 241, 100),
                          width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/icon14.png'),
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Próximos seminarios',
                              style: TextStyle(
                                color: Color.fromRGBO(34, 221, 187, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Planificación financiera estratégica - Óscar Díaz (Microsoft Teams).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Inversiones inteligentes para emprendedores - Mónica López (Google Meet).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Contabilidad para NO contadores - Alberto Cruz (Zoom).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize
                              .max, // Asegura que el Row use todo el espacio horizontal disponible
                          mainAxisAlignment: MainAxisAlignment
                              .end, // Alinea los hijos al final del eje principal (derecha)
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      20), // Ajusta este valor para controlar el espacio
                              child: Text(
                                'Ver todos',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                      10), // Match this with your container's border radius
                  onTap: _EventosDialog,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(64, 162, 241, 100),
                          width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/icon15.png'),
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Próximos eventos',
                              style: TextStyle(
                                color: Color.fromRGBO(34, 221, 187, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Conferencia anual de emprendedores "InnovaTech 2024" - Panel de expertos internacionales (Presencial y streaming).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Expo emprendedor 2024 -  Variedad de líderes de startups y tecnología (Presencial).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '· Encuentro de Networking "Conecta y Crece" - Líderes empresariales y mentores ( Presencial).',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize
                              .max, // Asegura que el Row use todo el espacio horizontal disponible
                          mainAxisAlignment: MainAxisAlignment
                              .end, // Alinea los hijos al final del eje principal (derecha)
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      20), // Ajusta este valor para controlar el espacio
                              child: Text(
                                'Ver todos',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //... rest of your ListView children...
            ],
          ),
        ),
      ),
    );
  }
}
