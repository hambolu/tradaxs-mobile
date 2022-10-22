import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/pages/login_screen.dart';

import '../util/colors_class.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 350,
            ),
            const Image(
              image: AssetImage("images/logo.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Tradaxs',
              style: TextStyle(fontFamily: 'DM Sans',fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 200),
            Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorOne.cbuttons,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                    ),
                    minimumSize: const Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 14,
                  ),
                  label: const Text("Get Started"),
                  //.........
                ))
          ],
        ),
      ),
    );
  }
}
