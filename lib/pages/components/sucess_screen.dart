import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:tradaxs/pages/wallet_main_page.dart';
import '../../widgets/success_button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(children: [
      const SizedBox(height: 250),
      const Image(image: AssetImage('images/success.png')),
      SizedBox(
        height: 50,
      ),
      const Text(
        'Successfull',
        style: TextStyle(
            color: Color.fromRGBO(42, 42, 42, 1),
            fontFamily: 'Inter',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1.3076923076923077),
      ),
      SizedBox(
        height: 100,
      ),
      SuccessButton(
        btnText: 'Proceed',
        onBtnPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalletMainPage()),
          );
        },
      ),
    ]))));
  }
}
