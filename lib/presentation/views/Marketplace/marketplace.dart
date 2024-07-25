import 'package:fin_glow/presentation/widgets/CardCarouselWidget1.dart';
import 'package:fin_glow/presentation/widgets/MenuDescuentos.dart';
import 'package:fin_glow/presentation/widgets/MenuMeses.dart';
import 'package:fin_glow/presentation/widgets/MenuTodas.dart';
import 'package:flutter/material.dart';

class MarketplaceView extends StatefulWidget {
  const MarketplaceView({super.key});

  @override
  State<MarketplaceView> createState() => _MarketplaceViewState();
}

class _MarketplaceViewState extends State<MarketplaceView> {
  // ignore: unused_field
  int selectedIndex = 0;
  final double progressValue = 0.7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extiende el cuerpo detrás del AppBar
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Marketplace empresarial',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
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
          padding: const EdgeInsets.all(0.1),
          child: ListView(
            children: <Widget>[
              CardCarouselWidget2(),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0), // Ajusta el padding según sea necesario
                  child: Text(
                    'Descubre nuestras promociones',
                    style: TextStyle(
                      color: Colors.white, // El color del texto
                      fontSize: 14, // Tamaño del texto
                      fontWeight: FontWeight.bold, // Grosor del texto
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0), // Define el espacio lateral aquí
                child: SizedBox(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    padding: const EdgeInsets.all(0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(4, 38, 92, 1),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        menuButton('Todas', 0),
                        Container(
                          color: const Color.fromRGBO(4, 38, 92, 1),
                          width: 2,
                          height: 30,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                        ),
                        menuButton('Meses sin intereses', 1),
                        Container(
                          color: const Color.fromRGBO(4, 38, 92, 1),
                          width: 2,
                          height: 30,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                        ),
                        menuButton('Descuentos', 2),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: _getContentForIndex(selectedIndex), // Método que devuelve el contenido basado en el índice seleccionado
              ),
              // Otros Widgets aquí...
            ],
          ),
        ),
      ),
    );
  }

  Widget menuButton(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          // Añade aquí cualquier acción que se deba realizar al seleccionar un elemento del menú
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 18.0), // Ajusta el relleno del texto
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), // Redondea las esquinas
          color: selectedIndex == index
              ? const Color.fromRGBO(45, 166, 144, 1)
              : Colors.transparent, // Cambia el color al seleccionar    
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: selectedIndex == index
                ? Colors.white
                : Colors.white70, // Cambia el color del texto al seleccionar
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Método que devuelve diferentes widgets según el índice
  Widget _getContentForIndex(int index) {
    switch (index) {
      case 0:
        return MenuTodasWidget();
      case 1:
        return MenuMesesWidget();
      case 2:
        return MenuDescuentosWidget();
      default:
        return const Text('Selecciona una opción');
    }
  }
}
