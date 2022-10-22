// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/pages/login_screen.dart';
import 'package:tradaxs/pages/otp_screen.dart';

import '../util/colors_class.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _email = '';
  String _password = '';

  @override
 Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Padding(
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
                        builder: (context) => const LoginScreen()),
                  );
                },
              )),
          Align(
              alignment: FractionalOffset(0.001, 0.9),
              child: Text(
                'Create Account',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 22),
              )),
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
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              labelText: 'Confirm Password',
              hintText: 'Confirm Password',
            ),
            onChanged: (value) {
              _password = value;
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Create account with email',
            style: TextStyle(fontFamily: 'DM Sans',color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
          ),
          SizedBox(
            height: 20,
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
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 14,
                  ),
                  label: const Text("Sign Up",
                  style: TextStyle(
                            fontFamily: 'DM Sans'),
                  ),
                  //.........
                )),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            const Text('Already have an Account?',
            style: TextStyle(
                            fontFamily: 'DM Sans'),
            ),
            TextButton(onPressed: () {  
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
            },
            child:const Text('Sign in',
            style: TextStyle(
                            fontFamily: 'DM Sans'),
            ))
          ])
        ]),
      ),
    ));
  }
}