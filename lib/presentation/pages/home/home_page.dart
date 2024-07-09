import 'package:flutter/material.dart';
import 'package:membrana/data/source/api_data.dart';
import 'package:membrana/presentation/pages/avisos/avisos_page.dart';
import 'package:membrana/presentation/pages/reportes/reportes_page.dart';

class Home extends StatefulWidget {
  final ApiClient apiClient;

  const Home({super.key, required this.apiClient});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _actual = 0;

  final List<Widget> _pages = [
    const Reportes(),
    const Avisos(),
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
