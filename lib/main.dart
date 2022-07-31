import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/home/home_page.dart';
import 'package:healtpoint/mood/add_mood_page.dart';
import 'package:healtpoint/rest/add_rest_page.dart';
import 'package:healtpoint/splash/splash_page.dart';
import 'package:healtpoint/theme/app_button_theme.dart';
import 'package:healtpoint/theme/app_input_decoration_theme.dart';
import 'package:healtpoint/theme/app_text_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: HealthPointApp(),
    ),
  );
}

class HealthPointApp extends StatelessWidget {
  const HealthPointApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Point',
      theme: ThemeData(
          fontFamily: 'Pridi',
          primaryColor: const Color(0xFFE45959),
          iconTheme: const IconThemeData(color: Color(0xFF9A9A9A)),
          backgroundColor: const Color(0xFFFBFBFB),
          cardColor: const Color(0xFFF2F2F2),
          textTheme: const AppTextTheme(),
          inputDecorationTheme: const AppInputDecorationTheme(),
          elevatedButtonTheme: const AppElevatedButtonTheme()),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/add-mood': (context) => const AddMoodPage(),
        '/add-rest': (context) => const AddRestPage(),
      },
    );
  }
}
