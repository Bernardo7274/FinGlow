import 'package:FinGlow/presentation/widgets/LastMovementsWidget.dart';
import 'package:flutter/material.dart';

class GoldCardView extends StatefulWidget {
  const GoldCardView({super.key});

  @override
  State<GoldCardView> createState() => _GoldCardViewState();
}

class _GoldCardViewState extends State<GoldCardView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extiende el cuerpo detrás del AppBar
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Tarjeta',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 19, 48, 1), // El color del AppBar
        elevation: 0, // Quitar la sombra de la AppBar
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
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(64, 162, 241, 150),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/Tarjeta_Gold_virtual_2.png',
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                  height: 35), // Espacio entre la imagen y los botones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildIconButton(
                      'assets/icons/icon4.png', 'Consultar \n NIP'),
                  _buildIconButton(
                      'assets/icons/icon5.png', 'Apagar \n tarjeta'),
                  _buildIconButton(
                      'assets/icons/icon6.png', 'Configurar \n tarjeta'),
                ],
              ),
              const SizedBox(height: 35),
              const LastMovementsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String iconPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InkWell(
          onTap: () {
            // Define la acción para cada botón aquí
            // ignore: avoid_print
            print('$label presionado');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent, // Fondo transparente
              border: Border.all(
                color:
                    const Color.fromRGBO(64, 162, 241, 150), // Color del borde
                width: 2, // Grosor del borde
              ),
              borderRadius: BorderRadius.circular(8), // Esquinas redondeadas
            ),
            padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal:
                    16), // Espacio vertical entre la imagen y el borde del botón
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(iconPath,
                    width: 45, height: 45), // Imágenes con el mismo tamaño
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
