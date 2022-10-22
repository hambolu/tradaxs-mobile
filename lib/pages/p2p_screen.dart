import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tab_container/tab_container.dart';
import 'package:tradaxs/pages/p2p_buy_coin.dart';
import '../util/colors_class.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class P2pScreen extends StatefulWidget {
  const P2pScreen({super.key});

  @override
  _P2pScreenState createState() => _P2pScreenState();
}

class _P2pScreenState extends State<P2pScreen> {
  static final List<Widget> _sell = <Widget>[
    const P2pScreen(),
    const SellPage()
  ];
  final List<Sample> samples = [
    Sample(
        id: 1,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 2,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 3,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 4,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 5,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 6,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 7,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 8,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 9,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 10,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 11,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 12,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 13,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
    Sample(
        id: 14,
        name: 'Rechellono',
        price: 562.0,
        currency: 'NGN',
        limit: 5000,
        balance: 50000,
        coin: 'USDT',
        method: 'Tradaxs'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Container(
            width: double.infinity,
            color: const Color(0xff1356D8),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 14,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'P2P',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const Spacer(),
                    ToggleSwitch(
                        initialLabelIndex: 0,
                        minHeight: 30,
                        customTextStyles: const [
                          TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14),
                          TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14),
                          TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14),
                        ],
                        totalSwitches: 3,
                        activeBgColor: const [Colors.black],
                        inactiveBgColor:
                            const Color.fromARGB(255, 72, 127, 237),
                        activeFgColor: Colors.white,
                        inactiveFgColor: Colors.white,
                        labels: const ['BUY', 'SELL', 'NGN'],
                        onToggle: (index) {})
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'NGN 5,276.37',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'USDT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                decoration: TextDecoration.underline),
                          )),
                      const SizedBox(
                        width: 5,
                        child: Text(
                          '|',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'BTC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                        child: Text(
                          '|',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'ETH',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                        child: Text(
                          '|',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'BNB',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                        child: Text(
                          '|',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'TRX',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                        child: Text(
                          '|',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'BUSD',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                            ),
                          )),
                    ])
                  ],
                ),
                
                Container(
                    padding: const EdgeInsets.all(20.0),
                    height : MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child:
                    
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                       
                         physics: ScrollPhysics(),
                        child:
                    
                     ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: samples.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                'images/user_icon.png',
                                              ),
                                              width: 30,
                                              height: 30,
                                            ),
                                            const SizedBox(
                                              width: 19,
                                            ),
                                            Text(
                                              samples[index].name,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 14,
                                                  height: 1.2,
                                                  fontFamily: 'DM Sans'),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.circle,
                                              color: ColorOne.cbuttons,
                                              size: 7,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'Price:',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff2B2B2B),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                samples[index]
                                                    .price
                                                    .toDouble()
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              Text(
                                                samples[index].currency,
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Inter'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'Buying limit:',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                samples[index]
                                                    .limit
                                                    .toDouble()
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              Text(
                                                ' - ${samples[index].limit.toDouble()}',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              Text(
                                                samples[index].currency,
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Inter'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 4,
                                              itemSize: 10.0,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 1.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ]),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: Row(children: [
                                                Text(
                                                  'Payment:${samples[index].method}',
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: 'Inter',
                                                  ),
                                                ),
                                              ])),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: Row(children: [
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.white,
                                                      backgroundColor:
                                                          Colors.green,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              6.0),
                                                      textStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Inter',
                                                      ),
                                                      elevation: 10),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const P2pBuyCoin()),
                                                    );
                                                  },
                                                  child: const Text('Buy'),
                                                ),
                                              ])),
                                        ]),
                                  ))
                                ],
                              ));
                        })))
              ],
            )),
      ],
    )));
  }
}

class Sample {
  late int id;
  late String name;
  late double price;
  late String currency;
  late double limit;
  late double balance;
  late String coin;
  late String method;

  Sample({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.limit,
    required this.balance,
    required this.coin,
    required this.method,
  });
}

class SellPage extends StatefulWidget {
  const SellPage({super.key});
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
