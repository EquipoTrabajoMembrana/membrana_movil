import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:membrana/presentation/pages/home_page.dart';
import 'package:sizer/sizer.dart';
import 'theme/theme.dart';
import 'theme/util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, 'Teachers');
    MaterialTheme theme = MaterialTheme(textTheme);

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Membrana',
          theme: brightness == Brightness.light ? theme.light() : theme.dark(),
          home: const Home(),
        );
      },
    );
  }
}





