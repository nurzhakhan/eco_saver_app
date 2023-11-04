import 'package:eco_saver_app/air_card_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Container(
        child: AirCardScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: '',),
        ],
        currentIndex: _selectedIndex,
          unselectedItemColor:  Color.fromRGBO(114, 114, 114, 1),
        selectedItemColor: Color.fromRGBO(152, 191, 94, 1),
        onTap: _onItemTap,
      ),
    );
  }
}
