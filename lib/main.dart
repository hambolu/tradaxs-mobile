import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradaxs/pages/welcome_screen.dart';
import 'package:tradaxs/services/providers/auth_provider.dart';
import 'package:tradaxs/services/providers/wallet_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => WalletProvider()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            top: true,
            child: WelcomeScreen(),
          )),
    );
  }
}
