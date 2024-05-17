import 'package:flutter/material.dart';

class NameList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _buildListItem("John Doe", "Banco X", Icons.account_balance),
        _buildListItem("Jane Smith", "Correo Y", Icons.email),
        _buildListItem("Alice Johnson", "Empresa Z", Icons.business),
        _buildListItem("Bob Brown", "Banco A", Icons.account_balance),
        _buildListItem("Carol Wilson", "Correo B", Icons.email),
        _buildListItem("David Lee", "Empresa C", Icons.business),
      ],
    );
  }

  Widget _buildListItem(String name, String info, IconData iconData) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF063d4e), // Color de fondo
        borderRadius: BorderRadius.circular(24.0), // Bordes redondeados
      ),
      child: Row(
        children: [
          SizedBox(
            width: 47.0, // Ancho fijo para el círculo
            height: 47.0, // Altura fija para el círculo
            child: _buildCircleAvatar(name),
          ),
          SizedBox(width: 16.0), // Separación entre el círculo y el texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xFF2877AC), // Color azul
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0, // Tamaño de fuente aumentado
                  ),
                ),
                SizedBox(height: 4.0), // Espaciado entre el nombre y la información
                Text(
                  info,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0, // Tamaño de fuente aumentado
                  ),
                ),
              ],
            ),
          ),
          Icon(
            iconData,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildCircleAvatar(String name) {
    String initials = _extractInitials(name);
    return CircleAvatar(
      backgroundColor: Color(0xFFC4C4C4), // Color gris
      child: Text(
        initials,
        style: TextStyle(
          color: Colors.black, // Color negro
          fontWeight: FontWeight.bold,
          fontSize: 15.0, // Tamaño de fuente aumentado
        ),
      ),
    );
  }

  String _extractInitials(String name) {
    List<String> parts = name.split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty) {
      return '${parts[0][0]}'.toUpperCase();
    } else {
      return '';
    }
  }
}
