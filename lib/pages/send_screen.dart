import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:tradaxs/pages/components/nav_bar.dart';
import 'package:tradaxs/pages/scan_screen.dart';

import '../util/colors_class.dart';
import 'deposit_screen.dart';
import 'notification_screen.dart';

class SendCryptoScreen extends StatefulWidget {
  const SendCryptoScreen({super.key});

  @override
  State<SendCryptoScreen> createState() => _SendCryptoScreenState();
}

class _SendCryptoScreenState extends State<SendCryptoScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(children: [
              const SizedBox(height: 40),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.black,
                  )),
              const SizedBox(width: 10),
              SizedBox(
                width: 190,
                height: 30,
                child: TextField(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blueAccent,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(9),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 14,
                        ),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)))),
              ),
              IconButton(
                icon: const Icon(Icons.qr_code_scanner),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScanScreen()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.support_agent),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
              ),
            ]),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 245, 245),
                    border: Border.all(
                      color: Color.fromARGB(255, 161, 160, 160),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(19, 86, 216, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
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
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'DM Sans',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            ),
                          )),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DepositScreen()),
                            );
                          },
                          child: Text(
                            'Send',
                            style: TextStyle(
                                fontFamily: 'DM Sans',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          )),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 290,
                decoration: BoxDecoration(),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Card(
                      color: Color(0xffD4D4D4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 1,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: 10, left: 10, top: 30, bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                        width: 150,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                    vertical: 10),
                                            labelText: 'Amount',
                                            hintText: '10',
                                          ),
                                        )),
                                    SizedBox(
                                        width: 100,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            suffixIcon:
                                                Icon(Icons.arrow_drop_down),
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                    vertical: 10),
                                            labelText: 'Currency',
                                            hintText: 'BNB',
                                          ),
                                        )),
                                  ]),
                            ),
                          ),
                          Row(children: const [
                            SizedBox(width: 20),
                            Text(
                              'BNB:0.003',
                              style: TextStyle(
                                  fontSize: 11, fontFamily: 'DM Sans'),
                            ),
                            Spacer(),
                            Text(
                              'Insufficient Funds',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'DM Sans',
                                  color: Colors.red),
                            ),
                            SizedBox(width: 20),
                          ]),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100),
                                        bottomLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      ),
                                    ),
                                    child: SizedBox(
                                        width: 300,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 10),
                                            labelText: 'Address',
                                            hintText: 'Address',
                                          ),
                                        ))),
                              ]),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: ColorOne.cbuttons,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                                bottomLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                              ),
                            ),
                            child: Text(
                              'FEE:0.5 BNB',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ))),
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
          ],
        ),
      ),
    ));
  }
}
