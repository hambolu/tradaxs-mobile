// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import '../util/colors_class.dart';

class BackButton extends StatelessWidget {
  final Function onBtnPressed;

  const BackButton({Key? key, required this.onBtnPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          onBtnPressed();
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black));
  }
}
