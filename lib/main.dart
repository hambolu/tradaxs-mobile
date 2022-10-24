import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradaxs/pages/welcome_screen.dart';
import 'package:tradaxs/services/providers/auth_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            top: true,
            child: WelcomeScreen(),
          )),
    );
  }
}
