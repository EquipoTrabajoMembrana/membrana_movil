import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:membrana/presentation/pages/home/home_page.dart';
import 'package:sizer/sizer.dart';
import 'presentation/theme/theme.dart';
import 'presentation/theme/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, 'Teachers');
    MaterialTheme theme = MaterialTheme(textTheme);

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Membrana',
          themeMode: ThemeMode.system,
          theme: theme.light(),
          darkTheme: theme.dark(),
          home: Home(),
        );
      },
    );
  }
}
