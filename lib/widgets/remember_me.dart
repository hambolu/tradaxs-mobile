import 'package:flutter/material.dart';

// import '../wallet_setup.dart';
class RememberMe extends StatefulWidget {
  const RememberMe({Key? key}) : super(key: key);


  @override
  State<RememberMe> createState() => _RememberMeState();
}


class _RememberMeState extends State<RememberMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        
        Checkbox(
      checkColor: const Color.fromARGB(255, 193, 187, 1),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    ),//Checkbox
         const Text(
          'Remember Me ',
          style: TextStyle(fontSize: 14.0),
        ), 
        const SizedBox(width: 90),
        TextButton(onPressed: (){

        }, child: Text('Forgot Password ?'))//Text
      ], //<Widget>[]
    ); //Row
  }
}
