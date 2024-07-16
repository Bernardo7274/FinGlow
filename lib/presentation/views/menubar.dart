import 'package:FinGlow/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:FinGlow/presentation/views/Dashboard/dashboard.dart';
import 'package:FinGlow/presentation/views/Marketplace/marketplace.dart';
import 'package:FinGlow/presentation/views/morefeatures.dart';

class MenubarView extends StatefulWidget {
  const MenubarView({super.key});

  @override
  State<MenubarView> createState() => _MenubarViewState();
}

class _MenubarViewState extends State<MenubarView> {
  int selectedIndex = 0;

  Widget _buildIcon(IconData icon, bool isActive) {
    if (!isActive) {
      return Icon(icon, size: 28, color: Colors.white);
    }
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0.1,
            blurRadius: 20,
          ),
        ],
      ),
      child: Icon(icon, size: 30, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    const BoxDecoration bottomNavDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(16, 57, 121, 1),
          Color.fromRGBO(16, 57, 121, 1)
        ],
      ),
    );

    final screens = [
      const HomeView(),
      const DashboardView(),
      const MarketplaceView(),
      const MoreFeaturesView(),
    ];

    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            fontSize: 0,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 0,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: Container(
          decoration: bottomNavDecoration,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.home, selectedIndex == 0),
                label: "Home",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.bar_chart, selectedIndex == 1),
                label: "Dashboard",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.store, selectedIndex == 2),
                label: "Marketplace",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.more_horiz, selectedIndex == 3),
                label: "More features",
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
