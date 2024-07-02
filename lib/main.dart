import 'package:flutter/material.dart';
import 'package:membrana/presentation/pages/home_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Membrana',
          theme: ThemeData(
            navigationBarTheme: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.all(
              TextStyle(fontFamily: 'Teachers'),
            )),
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xffced4da)),
            useMaterial3: true,
          ),
          home: const Home(),
        );
      },
    );
  }
}
