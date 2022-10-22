import 'package:flutter/material.dart';
import 'package:tradaxs/pages/components/sucess_screen.dart';

import '../util/colors_class.dart';

class CompletePayment extends StatefulWidget {
  const CompletePayment({super.key});

  @override
  _CompletePaymentState createState() => _CompletePaymentState();
}

class _CompletePaymentState extends State<CompletePayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
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
                child: Column(children: [
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Pay the Seller',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.1111111111111112),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Order will be cancled within 15:00',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(42, 42, 42, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 2.2857142857142856),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '₦ 5,000',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(42, 42, 42, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 2.2857142857142856),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.chat),
                          Text(
                            'Chat',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(42, 42, 42, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )
                        ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 400,
                      height: 534,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color:
                            Color.fromRGBO(241, 241, 241, 0.5400000214576721),
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 21,
                                height: 21,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 21,
                                          height: 21,
                                          decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(69, 151, 211, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(21, 21)),
                                          ))),
                                  const Positioned(
                                      top: 3,
                                      left: 9,
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'DM Sans',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.3333333333333333),
                                      )),
                                ])),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Leave the Tradaxs app and transfer funds to the \n sellers account provided below.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Column(children: [
                          Row(children: const [
                            Text(
                              'Bank Transfer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 18,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1111111111111112),
                            )
                          ]),
                          SizedBox(
                              width: 380,
                              child: Column(children: [
                                Row(children: const [
                                  Text(
                                    'Name',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Rechellono',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  )
                                ]),
                                Row(children: const [
                                  Text(
                                    'Bank Account Number',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                  Spacer(),
                                  Text(
                                    '1234567890',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  )
                                ]),
                                Row(children: const [
                                  Text(
                                    'Bank',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Wema Bank',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  )
                                ]),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(children: const [
                                  Text(
                                    'Ref Message',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  ),
                                  Spacer(),
                                  Text(
                                    '20456789873524127',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 2.6666666666666665),
                                  ),
                                  //
                                ]),
                              ])),
                        ]),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 21,
                                    height: 21,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 21,
                                              height: 21,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    69, 151, 211, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(21, 21)),
                                              ))),
                                      const Positioned(
                                          top: 3,
                                          left: 7,
                                          child: Text(
                                            '2',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'DM Sans',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          )),
                                    ])),
                                    SizedBox(width: 5,),
                                Text(
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
                                )
                              ],
                            ),
                            
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                minimumSize: const Size(100, 40),
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const OrderScreen()),
                                // );
                              },

                              child: const Text(
                                "Help",
                                style: TextStyle(fontFamily: 'DM Sans'),
                              ),
                              //.........
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorOne.cbuttons,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                minimumSize: const Size(250, 40),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SuccessScreen()),
                                );
                              },

                              child: const Text(
                                "Transferred, notify seller",
                                style: TextStyle(fontFamily: 'DM Sans'),
                              ),
                              //.........
                            )
                          ],
                        )
                      ]),
                    )
                  ])
                ]))));
  }
}
