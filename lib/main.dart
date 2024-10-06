import 'package:flutter/material.dart';
import 'package:myapp/data/theme/theme.dart';
import 'package:myapp/pages/card-details-page/card_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialTheme theme = MaterialTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.light(),
      home: const CardDetailsPage(),
    );
  }
}
