import 'package:FinGlow/presentation/views/mount_transfer.dart';
import 'package:flutter/material.dart';
// Asegúrate de importar flutter_bloc si usas BlocProvider y BlocBuilder

class TransferAccountFG extends StatefulWidget {
  const TransferAccountFG({Key? key}) : super(key: key);

  @override
  State<TransferAccountFG> createState() => _TransferAccountFGState();
}

class _TransferAccountFGState extends State<TransferAccountFG> {
  final List<Map<String, dynamic>> recentContacts = [
    {"name": "John Doe", "phone": "123-456-7890"},
    {"name": "Jane Smith", "phone": "234-567-8901"},
    {"name": "Alice Johnson", "phone": "345-678-9012"},
    {"name": "Bob Brown", "phone": "456-789-0123"},
    {"name": "Carol Wilson", "phone": "567-890-1234"},
    {"name": "David Lee", "phone": "678-901-2345"},
    {"name": "Emma Davis", "phone": "789-012-3456"},
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> recentContactsToShow = recentContacts.take(2).toList();

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '¿A quién le quieres transferir?',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xFF24344E),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xFF939BA8),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration(
                          hintText: 'Buscar nombres, teléfono o email',
                          hintStyle: TextStyle(color: Color(0xFF939BA8)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  'Recientes',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 18),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var contact in recentContactsToShow)
                      _buildListItem(contact["name"]),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  'Tus contactos',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 8),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var contact in recentContacts)
                    _buildContactListItem(contact["name"], contact["phone"]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(String name) {
    String initials = _extractInitials(name);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFC4C4C4),
            child: Text(
              initials,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactListItem(String name, String phone) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MountTransferView(name: name),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF063d4e),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 47.0,
              height: 47.0,
              child: CircleAvatar(
                backgroundColor: Color(0xFFC4C4C4),
                child: Text(
                  _extractInitials(name),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xFF2877AC),
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    phone,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
