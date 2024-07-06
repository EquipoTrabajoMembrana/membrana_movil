import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ajustes extends StatefulWidget {
  const Ajustes({Key? key}) : super(key: key);

  @override
  _AjustesState createState() => _AjustesState();
}

class _AjustesState extends State<Ajustes> {
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();
    _loadThemeMode();
  }

  void _loadThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ThemeMode? savedThemeMode =
        ThemeMode.values[prefs.getInt('themeMode') ?? 0];
    setState(() {
      _themeMode = savedThemeMode;
    });
  }

  void _saveThemeMode(ThemeMode mode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', mode.index);
  }

  void _setThemeMode(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
    _saveThemeMode(mode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      body: Center(
        child: DropdownButton<ThemeMode>(
          value: _themeMode,
          onChanged: (ThemeMode? mode) {
            if (mode != null) {
              _setThemeMode(mode);
            }
          },
          items: [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: const Text('Por defecto (Dispositivo)'),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: const Text('Claro'),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: const Text('Oscuro'),
            ),
          ],
        ),
      ),
    );
  }
}
