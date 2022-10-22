import 'package:flutter/material.dart';
import 'package:tradaxs/pages/components/nav_bar.dart';
import 'dart:math' as math;


class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  _SwapScreenState createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: SingleChildScrollView(
                    child: Column(children: [
                  const NavBar(),
                  // Figma Flutter Generator Group7114Widget - GROUP
                  Container(
                      width: 370,
                      height: 221,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 370,
                                height: 106,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(17, 16, 59, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 9,
                                      left: 24,
                                      child: Text(
                                        'From',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'DM Sans',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 9,
                                      left: 270,
                                      child: Container(
                                          width: 57,
                                          height: 16,
                                          child: Stack(children: const <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(
                                                  'Max',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontFamily: 'DM Sans',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 35,
                                                child: Text(
                                                  'Half',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontFamily: 'DM Sans',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ]))),
                                  Positioned(
                                      top: 42,
                                      left: 22,
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              decoration: const BoxDecoration(),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Container(
                                                      width: 36,
                                                      height: 36,
                                                      decoration:
                                                          const BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'images/user_icon.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        36,
                                                                        36)),
                                                      )),
                                                  const SizedBox(width: 10),
                                                  Container(
                                                    decoration:
                                                        const BoxDecoration(),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 0,
                                                        vertical: 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal: 0,
                                                                  vertical: 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              const Text(
                                                                'ATOM',
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextStyle(
                                                                    color:
                                                                        Color.fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            1),
                                                                    fontFamily:
                                                                        'DM Sans',
                                                                    fontSize:
                                                                        16,
                                                                    letterSpacing:
                                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    height: 1),
                                                              ),
                                                              const SizedBox(
                                                                  width: 10),
                                                              Container(
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Stack(
                                                                      children: <
                                                                          Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: Container(
                                                                                width: 12,
                                                                                height: 12,
                                                                                child: Stack(children: <Widget>[
                                                                                  const Positioned(
                                                                                      top: 4.474994659423828,
                                                                                      left: 2.0400009155273438,
                                                                                      child: Image(
                                                                                        image: AssetImage('images/user_icon.png'),
                                                                                      )),
                                                                                  Positioned(
                                                                                      top: 12,
                                                                                      left: 12,
                                                                                      child: Transform.rotate(
                                                                                          angle: 180 * (math.pi / 180),
                                                                                          child: const Image(
                                                                                            image: AssetImage('images/user_icon.png'),
                                                                                          ))),
                                                                                ]))),
                                                                      ])),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 0),
                                                        const Text(
                                                          'Cosmos Hub',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      230,
                                                                      230,
                                                                      230,
                                                                      1),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontSize: 12,
                                                              letterSpacing:
                                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height: 1),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 160),
                                            Container(
                                              decoration: const BoxDecoration(),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: const <Widget>[
                                                  Text(
                                                    '15',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                        fontFamily: 'DM Sans',
                                                        fontSize: 16,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height: 1),
                                                  ),
                                                  SizedBox(height: 1),
                                                  Text(
                                                    '≈ \$150.6',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 0.5),
                                                        fontFamily: 'DM Sans',
                                                        fontSize: 14,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height: 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ]))),
                        Positioned(
                            top: 115,
                            left: 0,
                            child: Container(
                                width: 370,
                                height: 106,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(17, 16, 59, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 22,
                                      left: 22,
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const <Widget>[
                                            Text(
                                              'To',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            ),
                                          ],
                                        ),
                                      )),
                                  Positioned(
                                      top: 53,
                                      left: 22,
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              decoration: const BoxDecoration(),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Container(
                                                      width: 36,
                                                      height: 36,
                                                      decoration:
                                                          const BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'images/user_icon.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        36,
                                                                        36)),
                                                      )),
                                                  const SizedBox(width: 10),
                                                  Container(
                                                    decoration:
                                                        const BoxDecoration(),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 0,
                                                        vertical: 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal: 0,
                                                                  vertical: 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              const Text(
                                                                'USDC',
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextStyle(
                                                                    color:
                                                                        Color.fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            1),
                                                                    fontFamily:
                                                                        'DM Sans',
                                                                    fontSize:
                                                                        18,
                                                                    letterSpacing:
                                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    height: 1),
                                                              ),
                                                              const SizedBox(
                                                                  width: 10),
                                                              Container(
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Stack(
                                                                      children: <
                                                                          Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: Container(
                                                                                width: 12,
                                                                                height: 12,
                                                                                child: Stack(children: <Widget>[
                                                                                  const Positioned(
                                                                                      top: 4.474994659423828,
                                                                                      left: 2.0400009155273438,
                                                                                      child: Image(
                                                                                        image: AssetImage('images/user_icon.png'),
                                                                                      )),
                                                                                  Positioned(
                                                                                      top: 12,
                                                                                      left: 12,
                                                                                      child: Transform.rotate(
                                                                                          angle: 180 * (math.pi / 180),
                                                                                          child: const Image(
                                                                                            image: AssetImage('images/user_icon.png'),
                                                                                          ))),
                                                                                ]))),
                                                                      ])),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 0),
                                                        const Text(
                                                          'Axelar',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      230,
                                                                      230,
                                                                      230,
                                                                      1),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontSize: 12,
                                                              letterSpacing:
                                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height: 1),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 152),
                                            Container(
                                              decoration: const BoxDecoration(),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: const <Widget>[
                                                  Text(
                                                    '≈ 150.6521',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                        fontFamily: 'DM Sans',
                                                        fontSize: 18,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height: 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ]))),
                        Positioned(
                            top: 91,
                            left: 170,
                            child: Container(
                                width: 39,
                                height: 38,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 39,
                                          height: 38,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(
                                                    6.123234262925839e-17, 1),
                                                end: Alignment(
                                                    -1, 6.123234262925839e-17),
                                                colors: [
                                                  Color.fromRGBO(
                                                      19, 86, 216, 1),
                                                  Color.fromRGBO(71, 13, 194, 1)
                                                ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(39, 38)),
                                          ))),
                                  const Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Image(
                                        image: AssetImage('images/swap.png'),
                                      )),
                                ]))),
                      ])),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                          width: 370,
                          height: 60,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xff353535),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                side: BorderSide(
                                    width: 2,
                                    color: Color(0xffE4E4E4).withOpacity(0.3)),
                              ),
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  color: Colors.white),
                            ),
                            onPressed: () {},
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Balance 80.0',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                        fontSize: 14, color: Colors.white),
                                  )
                                ]),
                          ))),
                  SizedBox(height: 20,),
                  Container(
                      width: 334,
                      height: 165,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 128,
                            left: 18,
                            child: Container(
                                width: 298,
                                height: 17,
                                child: Stack(children: const <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text(
                                        'Slippage',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Basier Circle',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 242,
                                      child: Text(
                                        '< 0.001%',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 20,
                            left: 18,
                            child: Container(
                                width: 296,
                                height: 38,
                                child: Stack(children: const <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text(
                                        'Rate',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Basier Circle',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 180,
                                      child: Text(
                                        '1 ATOM = 10.1 USDC',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 21,
                                      left: 185,
                                      child: Text(
                                        '1 USDC = 0.1 ATOM',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 0.5),
                                            fontFamily: 'Basier Circle',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 74,
                            left: 18,
                            child: Container(
                                width: 297,
                                height: 38,
                                child: Stack(children: const <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text(
                                        'Swap Fee',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Basier Circle',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 276,
                                      child: Text(
                                        '0%',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(18, 18, 18, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 21,
                                      left: 269,
                                      child: Text(
                                        '~\$0',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                222, 217, 232, 0.5),
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 334,
                                height: 165,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    width: 1,
                                  ),
                                ))),
                      ]))
                ])))));
  }
}
