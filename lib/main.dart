import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:membrana/data/source/api_data.dart';
import 'package:membrana/presentation/pages/home/home_page.dart';
import 'package:sizer/sizer.dart';
import 'presentation/theme/theme.dart';
import 'presentation/theme/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await dotenv.load(fileName: ".env");
  final dio = Dio();
  final apiUrl = dotenv.env['API_URL'] ?? 'default_api_url';
  final apiClient = ApiClient(dio, baseUrl: apiUrl);
  runApp(MyApp(apiClient: apiClient));
}

class MyApp extends StatelessWidget {
  final ApiClient apiClient;

  const MyApp({super.key, required this.apiClient});

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
          home: Home(apiClient: apiClient),
        );
      },
    );
  }
}
