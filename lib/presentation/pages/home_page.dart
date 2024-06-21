import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/avisos_page.dart';
import 'package:membrana/presentation/pages/reportes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _actual = 0;

  final List<Widget> _pages = [
    const ReportesPage(),
    const AvisosPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _actual = index;
          });
        },
        selectedIndex: _actual,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.text_snippet_outlined),
            selectedIcon: Icon(Icons.text_snippet_rounded),
            label: "Reportes",
            tooltip: "Reportes",
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none),
            selectedIcon: Icon(Icons.notifications),
            label: "Avisos",
            tooltip: "Avisos",
          )
        ],
      ),
      body: _pages[_actual],
    );
  }
}
