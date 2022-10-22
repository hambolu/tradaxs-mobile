import 'package:flutter/material.dart';
import 'package:tradaxs/pages/complete_payment.dart';

import '../util/colors_class.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Order Created',
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Pay the seller within 15:00',
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Image(
                          image: AssetImage('images/user_icon.png'),
                        ),
                        Text(
                          'Rechellono',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 12,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 10,
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.check_circle,
                          size: 14,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Tradaxs is holding the seller’s crypto in the \n escrow account',
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
                    Row(
                      children: const [
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.check_circle,
                          size: 14,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Tradaxs 24/7 customer support',
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
                    )
                  ]),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(children: [
                    Row(children: const [
                      Text(
                        'BUY BNB',
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
                      child:Column(children: [
                       Row(children: const [
                        Text(
                          'Fiat Amount',
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
                          '₦ 5,000',
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
                          'Price',
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
                          '₦ 208,299.99',
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
                          'Crypto Amount',
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
                          '0.01465768 BNB',
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
                      Row(children:  const [
                        Text(
                          'Order Number',
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
                      ])
                    ),
                    
                    
                  ]),
SizedBox(height: 30,),
                  Column(children: [
                    Row(children: const [
                      Text(
                        'Payment Method',
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
                      child:Column(children: [
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
                        )
                      ]),
                      Row(children: const [
                        Text(
                          'Bank Transfer',
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
                        
                      ]),
                      Row(children: const [

                      Text('Term',
                      textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 2.6666666666666665),
                     ),
                      ],),
                      Row(children: const [
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
                      ],),
                      Row(children: [
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
                              "Cancel",
                              style: TextStyle(fontFamily: 'DM Sans'),
                            ),
                            //.........
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorOne.cbuttons,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(270, 40),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CompletePayment()),
                              );
                            },

                            child: const Text(
                              "Make Payment",
                              style: TextStyle(fontFamily: 'DM Sans'),
                            ),
                            //.........
                          )
                      ],)
                     
                      ])
                    ),
                    
                    
                  ])
                ]))));
  }
}
