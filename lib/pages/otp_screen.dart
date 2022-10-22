import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:tradaxs/pages/register_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 73,
          ),
          Row(
            children: [

              Align(
              alignment: FractionalOffset(0.00, 0.9),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
              )),
              SizedBox(width: 100,),
              Align(
              alignment: Alignment(0.0,0.0),
              child: Text('OTP Verification',
              style: TextStyle(fontSize: 18),
              )),
            ],
          ),
SizedBox(height: 50,),
          OTPTextField(
              controller: otpController,
              length: 4,
              width: 300,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 45,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 15,
              style: const TextStyle(fontSize: 17),
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              }),
        ]),
      ),
    ));
  }
}
