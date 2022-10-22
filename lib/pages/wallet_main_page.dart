import 'package:flutter/material.dart';
import 'package:tradaxs/pages/coin_info_screen.dart';
import 'package:tradaxs/pages/components/coin_list.dart';
import 'package:tradaxs/pages/user_profile.dart';
import 'package:tradaxs/util/colors_class.dart';

import 'notification_screen.dart';

class WalletMainPage extends StatefulWidget {
  @override
  _WalletMainPageState createState() => _WalletMainPageState();
}

class _WalletMainPageState extends State<WalletMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()),
                    );
                  },
                ),
                elevation: 0,
                backgroundColor: Colors.white,
                title: Row(children: [
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.qr_code_scanner, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.support_agent, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      );
                    },
                  ),
                ])),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                    height: 125.0,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: ColorOne.cbuttons,
                        elevation: 0,
                        child: Center(
                            child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: const [
                                    Text(
                                      '\$5,276.37',
                                      style: TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Available Balance',
                                      style: TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontSize: 15,
                                          color: Colors.white),
                                    )
                                  ],
                                ))))),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Text('Available Coins',
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CoinInfoScreen()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Image(
                                      image: AssetImage('images/coin_logo.png'),
                                      width: 30,
                                    ),
                                    SizedBox(height: 15),
                                    Text('Ethereum',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'DM Sans',
                                        )),
                                    Text('+160%',
                                        style: TextStyle(
                                          color: Color(0xff34C23A),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          fontFamily: 'DM Sans',
                                        ))
                                  ])),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0))),
                                  child: CoinInfoScreen(),
                                );
                              });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: 120,
                          width: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 4,
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Image(
                                        image:
                                            AssetImage('images/coin_logo.png'),
                                        width: 30,
                                      ),
                                      SizedBox(height: 15),
                                      Text('Ethereum',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'DM Sans',
                                          )),
                                      Text('+160%',
                                          style: TextStyle(
                                            color: Color(0xff34C23A),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'DM Sans',
                                          ))
                                    ])),
                          ),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoinInfoScreen()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: 120,
                          width: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 4,
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Image(
                                        image:
                                            AssetImage('images/coin_logo.png'),
                                        width: 30,
                                      ),
                                      SizedBox(height: 15),
                                      Text('Ethereum',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'DM Sans',
                                          )),
                                      Text('+160%',
                                          style: TextStyle(
                                            color: Color(0xff34C23A),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'DM Sans',
                                          ))
                                    ])),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 40,
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
                      onPressed: () {
                        showModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            builder: (BuildContext context) {
                              return const CoinList();
                            });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 14,
                      ),
                      label: const Text(
                        "Add Coin",
                        style: TextStyle(fontFamily: 'DM Sans'),
                      ),
                      //.........
                    )),
              ]),
            )));
  }
}
