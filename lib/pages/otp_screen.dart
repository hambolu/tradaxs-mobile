import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:tradaxs/pages/register_screen.dart';
import 'package:tradaxs/pages/wallet_screen.dart';

import '../services/providers/auth_provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
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
                  alignment: const FractionalOffset(0.00, 0.9),
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
              const SizedBox(
                width: 100,
              ),
              const Align(
                  alignment: Alignment(0.0, 0.0),
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          auth.authenticated == false
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 50,
                    ),
                    Text(" Validating OTP ... Please wait"),
                  ],
                )
              : Expanded(
                  child: OTPTextField(
                      controller: otpController,
                      length: 5,
                      width: 300,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 45,
                      fieldStyle: FieldStyle.box,
                      outlineBorderRadius: 15,
                      style: const TextStyle(fontSize: 17),
                      onChanged: (pin) {
                        print("Changed: $pin");
                      },
                      onCompleted: (pin) async {
                        var login = await auth.validateOtp(pin);
                        print("Completed: $pin");
                        if (auth.authenticated == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.blue,
                              content: Text(
                                login.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              action: SnackBarAction(
                                label: "Dismiss",
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                },
                              ),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Wallet()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.blue,
                              content: Text(
                                login.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              action: SnackBarAction(
                                label: "Dismiss",
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                },
                              ),
                            ),
                          );
                        }
                      }),
                ),
        ]),
      ),
    ));
  }
}
