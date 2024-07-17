import 'package:FinGlow/presentation/views/Register/register_user.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:FinGlow/presentation/widgets/CustomLoginWidget.dart';
import 'package:FinGlow/presentation/widgets/WelcomeWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Arial',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Login Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAuthenticated = true;
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromRGBO(1, 19, 48, 1),
              Color.fromRGBO(4, 38, 92, 1),
            ],
            center: Alignment.center,
            radius: 1.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                const WelcomeWidget(),
                const SizedBox(height: 50),
                const CustomLoginWidget(isAuthenticated: true),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Implementar la funcionalidad aquí
                      },
                      child: const Text(
                        'Recuperar contraseñas',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(34, 221, 187, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'o',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          '¿Quieres usar la app de FinGlow?',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const UserRegister(),
                              ),
                            );
                          },
                          child: const Text(
                            'Abrir cuenta',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(34, 221, 187, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        _authenticateWithBiometrics();
                      },
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Icon(
                          Icons.fingerprint,
                          size: 50.0,
                          color: Colors.white,
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
    );
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Escanea tu huella para acceder a la aplicación',
        options: const AuthenticationOptions(biometricOnly: true),
      );
      if (authenticated) {
        setState(() {
          isAuthenticated = true;
        });
        // Navigate to home view
      }
    } catch (e) {
      print("Error en la autenticación biométrica: $e");
    }
  }
}
