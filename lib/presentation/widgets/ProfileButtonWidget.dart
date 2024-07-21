import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const ProfileButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Add padding only at the top of the InkWell widget
      padding: const EdgeInsets.only(top: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: const Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/User.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'María López Urbina',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Ver perfil',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 216, 216, 216),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2.0,
              height:
                  2.0, // Divider thickness and the space it occupies in the main axis.
            ),
          ],
        ),
      ),
    );
  }
}
