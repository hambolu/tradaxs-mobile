import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Support',
                style: TextStyle(
                    fontFamily: 'DM Sans', fontSize: 14, color: Colors.black),
              ),
            ],
          )),
      ),
    );
  }
}