import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String BaseUrl = "https://tradaxs.com/tradaxs.com/mobile/api/";
errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(text),
    duration: const Duration(seconds: 1),
  ));
}
