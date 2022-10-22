// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import '../util/colors_class.dart';

class SuccessButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const SuccessButton(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorOne.cbuttons,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            minimumSize: const Size(200, 50),
          ),
          onPressed: () {
            onBtnPressed();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          label: Text(btnText),
          //.........
        ));
  }
}
