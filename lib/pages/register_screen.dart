// ignore_for_file: unnecessw

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tradaxs/pages/login_screen.dart';
import 'package:tradaxs/pages/wallet_screen.dart';

import '../services/auth_service.dart';
import '../services/data/models/user_request_model.dart';
import '../services/providers/auth_provider.dart';
import '../util/colors_class.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  UserRequestModel userRequestModel = UserRequestModel();
  final _formKey = GlobalKey<FormState>();
  final AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(children: <Widget>[
          const SizedBox(
            width: 200,
            height: 73,
          ),
          Align(
              alignment: const FractionalOffset(0.00, 0.9),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              )),
          const Align(
              alignment: FractionalOffset(0.001, 0.9),
              child: Text(
                'Create Account',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 22),
              )),
          const SizedBox(
            height: 38,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                  ),
                  onChanged: (value) {
                    userRequestModel.email = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty
                        // ||
                        // !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                        ) {
                      return "Please Enter a valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                  onChanged: (value) {
                    userRequestModel.password = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty
                        // ||
                        // !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                        ) {
                      return "Phone Number is required ";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(16.0),
                //     ),
                //     labelText: 'Confirm Password',
                //     hintText: 'Confirm Password',
                //   ),
                //
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Create account with email',
            style: TextStyle(
                fontFamily: 'DM Sans',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          auth.registeredInStatus == Status.Authenticating
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircularProgressIndicator(),
                    Text(" Login ... Please wait")
                  ],
                )
              : Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorOne.cbuttons,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      minimumSize: const Size(200, 50),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        var login = auth.register(
                          email: userRequestModel.email!,
                          password: userRequestModel.password!,
                        );
                        if (auth.authenticated) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Wallet()),
                          );
                        } else {}
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                    ),
                    label: const Text(
                      "Sign Up",
                      style: TextStyle(fontFamily: 'DM Sans'),
                    ),
                    //.........
                  )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Already have an Account?',
              style: TextStyle(fontFamily: 'DM Sans'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontFamily: 'DM Sans'),
                ))
          ])
        ]),
      ),
    ));
  }
}
