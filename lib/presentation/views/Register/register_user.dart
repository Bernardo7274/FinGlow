import 'package:fin_glow/presentation/widgets/WelcomeWidget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fin_glow/domain/models/Register/register_model.dart';
import 'package:fin_glow/presentation/bloc/Register/register_bloc.dart';
import 'package:fin_glow/presentation/bloc/Register/register_event.dart';
import 'package:fin_glow/presentation/bloc/Register/register_state.dart';
import 'package:fin_glow/domain/usecases/Register/load_register_data.dart';
import 'package:fin_glow/data/repositories/Register/register_repository_impl.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController rfcController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController idBankController = TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) => RegisterBloc(RegisterData(RegisterRepositoryImpl())),
        child: BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return DecoratedBox(
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: <Widget>[
                          const SizedBox(height: 5),
                          const WelcomeWidget2(),
                          const SizedBox(height: 20),
                          _buildTextField(nameController, 'Nombre'),
                          const SizedBox(height: 10),
                          _buildTextField(lastnameController, 'Apellido'),
                          const SizedBox(height: 10),
                          _buildTextField(emailController, 'Correo electrónico'),
                          const SizedBox(height: 20),
                          _buildPhoneNumberField(),
                          const SizedBox(height: 10),
                          _buildRFCField(),
                          const SizedBox(height: 10),
                          _buildPasswordFields(),
                          const SizedBox(height: 10),
                          _buildTermsAndConditions(),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              if (_acceptTerms) {
                                final registerModel = RegisterModel(
                                  name: nameController.text,
                                  lastname: lastnameController.text,
                                  email: emailController.text,
                                  rfc: rfcController.text,
                                  phone: phoneController.text,
                                  password: passwordController.text,
                                  id_bank: 9,
                                );

                                BlocProvider.of<RegisterBloc>(context).add(SubmitRegisterEvent(registerModel));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal, // Fondo del botón
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                            ),
                            child: const Text('Registrarse', style: TextStyle(color: Colors.white)),
                          ),
                          if (state is RegisterLoading) const CircularProgressIndicator(),
                          if (state is RegisterError) Text(state.message, style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(16, 57, 121, 1),
                    width: double.infinity,
                    height: 40,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color.fromRGBO(1, 19, 48, 1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.teal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.tealAccent),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildPhoneNumberField() {
    return TextField(
      controller: phoneController,
      decoration: InputDecoration(
        labelText: 'Número telefónico',
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color.fromRGBO(1, 19, 48, 1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.teal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.tealAccent),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildRFCField() {
    return TextField(
      controller: rfcController,
      decoration: InputDecoration(
        labelText: 'RFC',
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color.fromRGBO(1, 19, 48, 1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.teal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.tealAccent),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildPasswordFields() {
    return Column(
      children: [
        TextField(
          controller: passwordController,
          obscureText: _obscureText1,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: const TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText1 ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _obscureText1 = !_obscureText1;
                });
              },
            ),
            filled: true,
            fillColor: const Color.fromRGBO(1, 19, 48, 1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.teal),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.tealAccent),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: _obscureText2,
          decoration: InputDecoration(
            labelText: 'Confirmar Contraseña',
            labelStyle: const TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText2 ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _obscureText2 = !_obscureText2;
                });
              },
            ),
            filled: true,
            fillColor: const Color.fromRGBO(1, 19, 48, 1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.teal),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.tealAccent),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget _buildTermsAndConditions() {
    return CheckboxListTile(
      title: const Text(
        'Acepto los términos y condiciones',
        style: TextStyle(color: Colors.white),
      ),
      value: _acceptTerms,
      onChanged: (bool? value) {
        setState(() {
          _acceptTerms = value ?? false;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.teal,
      checkColor: Colors.white,
    );
  }
}
