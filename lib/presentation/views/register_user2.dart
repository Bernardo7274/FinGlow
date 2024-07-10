import 'package:flutter/material.dart';

class UserRegister2 extends StatefulWidget {
  const UserRegister2({super.key});

  @override
  State<UserRegister2> createState() => _UserRegister2State();
}

class _UserRegister2State extends State<UserRegister2> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: <Widget>[
            Container(
              color: const Color.fromRGBO(16, 57, 121, 1),
              width: double.infinity,
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    const Text(
                      'INFORMACIÓN PERSONAL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '¡Cada dato cuenta! Completa el formulario y \nalcanza tus metas financieras.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildPhoneNumberField(),
                    const SizedBox(height: 10),
                    const Text(
                      'Fecha de nacimiento',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildDateOfBirthField(),
                    const SizedBox(height: 10),
                    _buildCountryField(),
                    const SizedBox(height: 10),
                    _buildRFCField(),
                    const SizedBox(height: 10),
                    _buildPasswordFields(),
                    const SizedBox(height: 10),
                    _buildTermsAndConditions(),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const UserRegister2(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal, // Fondo del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 50),
                      ),
                      child: const Text('Registrarse',
                          style: TextStyle(color: Colors.white)),
                    ),
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
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Número telefónico',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
      ),
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.phone,
    );
  }

  Widget _buildDateOfBirthField() {
    return Row(
      children: <Widget>[
        Expanded(
          child: DropdownButtonFormField<int>(
            decoration: InputDecoration(
              labelText: 'Día',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
            ),
            dropdownColor: Colors.blue,
            style: TextStyle(color: Colors.black),
            items: List.generate(31, (index) => index + 1)
                .map((day) => DropdownMenuItem<int>(
                      value: day,
                      child: Text(day.toString()),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Mes',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
            ),
            dropdownColor: Colors.white,
            style: TextStyle(color: Colors.black),
            items: [
              'Enero',
              'Febrero',
              'Marzo',
              'Abril',
              'Mayo',
              'Junio',
              'Julio',
              'Agosto',
              'Septiembre',
              'Octubre',
              'Noviembre',
              'Diciembre'
            ]
                .map((month) => DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: DropdownButtonFormField<int>(
            decoration: InputDecoration(
              labelText: 'Año',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
            ),
            dropdownColor: Colors.blue,
            style: TextStyle(color: Colors.black),
            items: List.generate(100, (index) => 2024 - index)
                .map((year) => DropdownMenuItem<int>(
                      value: year,
                      child: Text(year.toString()),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  Widget _buildCountryField() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'País',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
      ),
      dropdownColor: Colors.blue,
      style: TextStyle(color: Colors.black),
      items: [
        'México',
        'Estados Unidos',
        'Canadá',
        'España',
        'Argentina',
        'Colombia',
        // Add more countries as needed
      ]
          .map((country) => DropdownMenuItem<String>(
                value: country,
                child: Text(country),
              ))
          .toList(),
      onChanged: (value) {},
    );
  }

  Widget _buildRFCField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'RFC',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.tealAccent),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _buildPasswordFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Contraseña',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 5),
        const Text(
          'Crea una contraseña, la podrás usar parra iniciar sesión en tu app Finglow.',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: _obscureText1,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText1 ? Icons.visibility_off : Icons.visibility,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _obscureText1 = !_obscureText1;
                });
              },
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: _obscureText2,
          decoration: InputDecoration(
            labelText: 'Confirmar contraseña',
            labelStyle: TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText2 ? Icons.visibility_off : Icons.visibility,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _obscureText2 = !_obscureText2;
                });
              },
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildTermsAndConditions() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _acceptTerms,
          onChanged: (value) {
            setState(() {
              _acceptTerms = value!;
            });
          },
          activeColor: Colors.tealAccent,
          checkColor: Colors.black,
        ),
        const Text(
          'He leído y acepto los ',
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            // Handle terms and conditions tap
          },
          child: const Text(
            'términos y condiciones',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
