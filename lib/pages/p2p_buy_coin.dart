import 'package:flutter/material.dart';
import 'package:tradaxs/pages/order_screen.dart';

import '../util/colors_class.dart';

class P2pBuyCoin extends StatefulWidget {
  const P2pBuyCoin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _P2pBuyCoinState createState() => _P2pBuyCoinState();
}

class _P2pBuyCoinState extends State<P2pBuyCoin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                  child: Text(
                    'BNB',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                    ),
                  ),
                ),
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  iconSize: 13,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '₦ 208,299.99',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sync),
                        iconSize: 14,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Limit |',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '₦5,000 - ₦5,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 380,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'By Fiat',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'DM Sans',
                                          decoration: TextDecoration.underline),
                                    )),
                                const SizedBox(
                                  width: 30,
                                  child: Text(
                                    '|',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'By Crypto',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'DM Sans',
                                      ),
                                    )),
                              ]),
                          SizedBox(
                            width: 350,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                labelText: 'Amount',
                                hintText: 'Amount',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: 360,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'DM Sans',
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '0.01234567 BNB',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'DM Sans',
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 360,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    'Amount',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'DM Sans',
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '5,000 NGN',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'DM Sans',
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorOne.cbuttons,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(350, 40),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderScreen()),
                              );
                            },

                            child: const Text(
                              "Buy",
                              style: TextStyle(fontFamily: 'DM Sans'),
                            ),
                            //.........
                          )
                        ],
                      )),
                  SizedBox(height: 10),
                  Container(
                      width: 380,
                      height: 62,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 380,
                                height: 62,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(
                                      228, 228, 228, 0.5199999809265137),
                                ))),
                        const Center(
                            child: Text(
                          'ATTENTION ! Please read the following terms and condition \n carefully.Faliure to comply might result in fail transaction and \n financial loss ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(210, 163, 21, 1),
                              fontFamily: 'Inter',
                              fontSize: 13,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.7),
                        )),
                      ])),
                  // Figma Flutter Generator Group7136Widget - GROUP
                  Container(
                      width: 340,
                      height: 208,
                      child: Stack(children: const <Widget>[
                        Positioned(
                            top: 174,
                            left: 3,
                            child: Text(
                              'Please dont write and crypto, bnb, usdt, words during your \n transaction',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3076923076923077),
                            )),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Text(
                              'Trader Info',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(137, 138, 141, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.4615384615384617),
                            )),
                        Positioned(
                            top: 136,
                            left: 0,
                            child: Text(
                              'Terms',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(137, 138, 141, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.2857142857142856),
                            )),
                        Positioned(
                            top: 30,
                            left: 2,
                            child: Text(
                              'Payment Window',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                        Positioned(
                            top: 26,
                            left: 270,
                            child: Text(
                              '15 Minutes',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                            
                        Positioned(
                            top: 62,
                            left: 270,
                            child: Text(
                              'Rechellono',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                        Positioned(
                            top: 94,
                            left: 265,
                            child: Text(
                              'Bank Transfer',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                        Positioned(
                            top: 62,
                            left: 2,
                            child: Text(
                              'Buyer Username',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                        Positioned(
                            top: 94,
                            left: 4,
                            child: Text(
                              'Payment Method',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 2.6666666666666665),
                            )),
                      ]))
                ],
              ),
            )));
  }
}
