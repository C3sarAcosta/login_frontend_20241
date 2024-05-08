import 'package:flutter/material.dart';
import 'package:login_frontend_20241/Services/auth_services.dart';
import 'package:login_frontend_20241/Services/notifications_services.dart';
import 'package:login_frontend_20241/screens/checking.dart';
import 'package:login_frontend_20241/screens/login.dart';
import 'package:login_frontend_20241/screens/principal.dart';
import 'package:login_frontend_20241/screens/registro.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 247, 230, 196)),
        useMaterial3: true,
      ),
      initialRoute: 'checking',
      routes: {
        'login': (_) => LoginPage(),
        'register': (_) => RegistroPage(),
        'home': (_) => PrincipalScr(),
        'checking': (_) => CheckAuthScreen(),
      },
      scaffoldMessengerKey: NotificationsServices.messengerKey,
    );
  }
}
