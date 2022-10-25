import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:tradaxs/pages/register_screen.dart';
import 'package:tradaxs/pages/wallet_screen.dart';
import 'package:tradaxs/services/data/models/user_request_model.dart';
import 'package:tradaxs/widgets/remember_me.dart';

import '../services/providers/auth_provider.dart';
import '../util/colors_class.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserRequestModel userRequestModel = UserRequestModel();
  final _formKey = GlobalKey<FormState>();

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
                        builder: (context) => const RegisterScreen()),
                  );
                },
              )),
          const Align(
              alignment: FractionalOffset(0.001, 0.9),
              child: Text(
                "Let's sign you in",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'DM Sans',
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22),
              )),
          const SizedBox(
            height: 28,
          ),
          const Align(
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
          const SizedBox(
            height: 38,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextField(
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
                  ),
                  const SizedBox(
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
                      userRequestModel.password = value;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )),
          const RememberMe(),
          const SizedBox(
            height: 30,
          ),
          if (auth.loggedInStatus == Status.Authenticating)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CircularProgressIndicator(),
                Text(" Login ... Please wait")
              ],
            )
          else
            Directionality(
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
                      var login = await auth.login(
                        email: userRequestModel.email!,
                        password: userRequestModel.password!,
                      );
                      print("THIS IS LOGIN SCREEN SUCCESS DATA :::::${login!}");

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
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 14,
                  ),
                  label: const Text(
                    "Sign in",
                    style: TextStyle(fontFamily: 'DM Sans'),
                  ),
                  //.........
                )),
          const SizedBox(
            height: 10,
          ),
          const Text('OR'),
          const SizedBox(
            height: 10,
          ),
          SignInButton(
            Buttons.Google,
            text: "Continue with Google",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
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
                child: const Text('Sign Up'))
          ])
        ]),
      ),
    ));
  }
}
