import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'theme/theme_config.dart';
import 'package:flutter/services.dart'; // Tambahkan ini

void main() async {
  // Tambahkan 2 baris ini
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kamus Bahasa Moy',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.themeData, // Gunakan tema dari konfigurasi tema
      home: const SplashScreen(),
    );
  }
}
