import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/pages/register_screen.dart';
import 'package:tradaxs/pages/wallet_screen.dart';
import 'package:tradaxs/widgets/remember_me.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../util/colors_class.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _password = '';

  String _email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(children: <Widget>[
          SizedBox(
            width: 200,
            height: 73,
          ),
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
          Align(
              alignment: FractionalOffset(0.001, 0.9),
              child: Text(
                "Let's sign you in",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'DM Sans',
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22),
              )),
          SizedBox(
            height: 28,
          ),
          Align(
            alignment: FractionalOffset(0.001, 0.9),
            child: Text(
              'Welcome back, you’ve been missed!',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  letterSpacing: -0.800000011920929,
                  fontWeight: FontWeight.normal,
                  height: 1.7),
            ),
          ),
          SizedBox(
            height: 38,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              labelText: 'Email',
              hintText: 'Enter Your Email',
            ),
            onChanged: (value) {
              _email = value;
            },
          ),
          SizedBox(
            height: 32,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              labelText: 'Password',
              hintText: 'Enter Password',
            ),
            onChanged: (value) {
              _password = value;
            },
          ),
          SizedBox(
            height: 30,
          ),
          RememberMe(),
          SizedBox(
            height: 30,
          ),
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
                    MaterialPageRoute(builder: (context) => const Wallet()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                ),
                label: const Text(
                  "Sign in",
                  style: TextStyle(fontFamily: 'DM Sans'),
                ),
                //.........
              )),
          SizedBox(
            height: 10,
          ),
          Text('OR'),
          SizedBox(
            height: 10,
          ),
          SignInButton(
            Buttons.Google,
            text: "Continue with Google",
            onPressed: () {},
          ),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Dont have an Account?',
              style: TextStyle(fontFamily: 'DM Sans'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: Text('Sign Up'))
          ])
        ]),
      ),
    ));
  }
}
