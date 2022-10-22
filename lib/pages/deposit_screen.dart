import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/pages/send_screen.dart';
import 'dart:math' as math;

import 'package:tradaxs/util/colors_class.dart';
import 'package:tradaxs/widgets/success_button.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

enum SingingCharacter { cardpayment, tradaxspayment }

class _DepositScreenState extends State<DepositScreen> {
  bool _show = false;
  SingingCharacter? _character = SingingCharacter.cardpayment;

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
              icon: Icon(Icons.arrow_back_ios, size: 15, color: Colors.black,)),
            elevation: 0,
            backgroundColor: Colors.white,
            title:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Deposit',
            style: TextStyle(fontFamily: 'DM Sans', fontSize: 14, color: Colors.black),
            ),
            ],)
      ),
       
            body: Column(children: [
      const SizedBox(
        height: 40,
      ),
      
      
      Container(
          width: 286,
          height: 40,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 53,
                child: Container(
                    width: 233,
                    height: 40,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 89,
                          child: Container(
                              width: 144,
                              height: 40,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                                color: Color.fromRGBO(20, 87, 216, 1),
                              ))),
                      Positioned(
                          top: 0,
                          bottom: 2,
                          left: 0,
                          child: TextButton(
                              onPressed: () {
                                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SendCryptoScreen()),
                              );
                              },
                              child: Text(
                                'Send',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(18, 18, 18, 1),
                                    fontFamily: 'Basier Circle',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.4285714285714286),
                              ))),
                    ]))),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 286,
                    height: 40,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 286,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(60, 60, 60, 1),
                                  width: 1,
                                ),
                              ))),
                      Positioned(
                          top: 0,
                          left: 188,
                          bottom: 2,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DepositScreen()),
                              );
                            },
                            child: Text(
                              'Deposit',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Basier Circle',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            ),
                          )),
                    ]))),
          ])),
      SizedBox(
        height: 50,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
            width: 100,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Currency',
                hintText: 'Currency',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              ),
              onChanged: (value){

              },
            )),
        SizedBox(
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                labelText: 'Amount',
                hintText: 'Amount',
              ),
            )),
      ]),
      SizedBox(
        height: 40,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Amount',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
              Text('0.15 BTC',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Rate',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
              Text('1BTC = \$21,726',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deposit Fee',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
              Text('0%', style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total payment',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
              Text('\$3,185.62',
                  style: TextStyle(fontFamily: 'DM Sans', fontSize: 14)),
            ],
          )),
      SizedBox(
        height: 40,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Text('Payment method'),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('images/payment.png'),
                width: 100,
              ),
              Radio(
                value: SingingCharacter.cardpayment,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ],
          )),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('images/logo.png'),
                width: 20,
              ),
              Radio(
                value: SingingCharacter.tradaxspayment,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ],
          )),
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
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 14,
            ),
            label: const Text(
              "Continue",
              style: TextStyle(fontFamily: 'DM Sans'),
            ),
            //.........
          )),
    ])));
  }
}
