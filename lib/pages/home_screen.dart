import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:tradaxs/pages/components/nav_bar.dart';
import 'package:tradaxs/pages/deposit_screen.dart';
import 'package:tradaxs/pages/send_screen.dart';
import '../util/coin_card.dart';
import '../util/coin_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        if (mounted) {
          setState(() {
            coinList;
          });
        }
      }
      return coinList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  @override
  void initState() {
    fetchCoin();
    Timer.periodic(const Duration(seconds: 10), (timer) => fetchCoin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Column(children: [
                  const NavBar(),
                  const Align(
                    alignment: FractionalOffset(0.1, 0.9),
                    child: Text(
                      'Hello Will!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontFamily: 'DM Sans',
                          fontSize: 16,
                          letterSpacing: -0.800000011920929,
                          fontWeight: FontWeight.normal,
                          height: 1.7),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage('images/hero.png')),
                  const SizedBox(
                    height: 20,
                  ),
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
                                        builder: (context) =>
                                            const DepositScreen()),
                                  );
                                },
                                child: Text(
                                  'Deposit',
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
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      const Text('Watchlist'),
                      const SizedBox(width: 20),
                      const Text('Coin'),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: coinList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return CoinCard(
                                name: coinList[index].name,
                                symbol: coinList[index].symbol,
                                imageUrl: coinList[index].imageUrl,
                                price: coinList[index].price.toDouble(),
                                change: coinList[index].change.toDouble(),
                                changePercentage:
                                    coinList[index].changePercentage.toDouble(),
                              );
                            },
                          )))
                ]))));
  }
}

// class _currencies {
//   int id;
//   String name;
//   String symbol;
//   String currency;
// }
