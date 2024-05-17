import 'package:FinGlow/presentation/views/SeminarView.dart';
import 'package:flutter/material.dart';

class SeminarSeminarView extends StatefulWidget {
  const SeminarSeminarView({super.key});

  @override
  State<SeminarSeminarView> createState() => _SeminarSeminarView();
}

class _SeminarSeminarView extends State<SeminarSeminarView> {
  int selectedIndex = 0;

  // ignore: non_constant_identifier_names
  void _RecordatoriosDialog() {
    // ignore: avoid_print
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SeminarView()));
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
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/icon17.png'),
                                size: 50,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Innovación y tecnología',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Transform.rotate(
                                angle: 3.14159, // 45 grados en radianes
                                child: const ImageIcon(
                                  AssetImage('assets/icons/icon16.png'),
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '· Tendencias tecnológicas emergentes.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '· Aplicaciones de inteligencia artificial en negocios.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/icon18.png'),
                                size: 50,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Desarrollo de negocios',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Transform.rotate(
                                angle: 3.14159, // 45 grados en radianes
                                child: const ImageIcon(
                                  AssetImage('assets/icons/icon16.png'),
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '· Estrategias de crecimiento empresarial.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '· Modelos de negocio y planificación estratégica.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/icon19.png'),
                                size: 50,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Finanzas y economía',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Transform.rotate(
                                angle: 3.14159, // 45 grados en radianes
                                child: const ImageIcon(
                                  AssetImage('assets/icons/icon16.png'),
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '· Gestión financiera para startups.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '· Fuentes de financiamiento y capital de riesgo.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/icon20.png'),
                                size: 50,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Marketing y ventas',
                                style: TextStyle(
                                  color: Color.fromRGBO(34, 221, 187, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Transform.rotate(
                                angle: 3.14159, // 45 grados en radianes
                                child: const ImageIcon(
                                  AssetImage('assets/icons/icon16.png'),
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '· Estrategias de marketing digital.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '· Técnicas de venta y expansión de mercado.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
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
