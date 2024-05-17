import 'package:flutter/material.dart';

class TransferOptionBox extends StatelessWidget {
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  const TransferOptionBox({
    required this.title1,
    required this.subtitle1,
    required this.title2,
    required this.subtitle2,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFF05204C),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Color(0xFF1C528D), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                title1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                subtitle1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
            onTap: onTap1,
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                title2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,

                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                subtitle2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
            onTap: onTap2,
          ),
        ],
      ),
    );
  }
}
