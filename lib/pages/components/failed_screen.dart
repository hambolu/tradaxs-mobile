import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../../widgets/success_button.dart';


class FailedScreen extends StatefulWidget {
  const FailedScreen({super.key});

  @override
  State<FailedScreen> createState() => _FailedScreenState();
}

class _FailedScreenState extends State<FailedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      const SizedBox(height: 100),
      const Image(image: AssetImage('images/failed.png')),
      SuccessButton(
        btnText: 'Proceed',
        onBtnPressed: () {},
      ),
    ])));
  }
}
