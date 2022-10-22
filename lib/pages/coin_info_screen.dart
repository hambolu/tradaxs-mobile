import 'package:flutter/material.dart';
import 'package:tradaxs/pages/receive_coin_screen.dart';
import 'package:tradaxs/pages/send_screen.dart';
import 'package:tradaxs/pages/swap_screen.dart';
import 'package:tradaxs/util/colors_class.dart';
import 'dart:math' as math;

class CoinInfoScreen extends StatefulWidget {
  const CoinInfoScreen({super.key});

  @override
  State<CoinInfoScreen> createState() => _CoinInfoScreenState();
}

class _CoinInfoScreenState extends State<CoinInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [

          
          Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ethereum',
                      style: TextStyle(fontSize: 14, fontFamily: 'DM Sans'),
                    ),
                    const Text(
                      'Coin',
                      style: TextStyle(fontSize: 12, fontFamily: 'DM Sans'),
                    ),
                  ],
                )
              ],
            ),
            Center(
              child: Column(
                children: [
                  const Image(
                      image: AssetImage(
                    'images/coin_icons.png',
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('0.001342 ETH'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('= \$0.48'),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  CircleAvatar(
                    backgroundColor: ColorOne.cbuttons,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SendCryptoScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.telegram_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Send',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                    ),
                  ),
                ]),
                const SizedBox(
                  width: 35,
                ),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: ColorOne.cbuttons,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReceiveCoinScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Receive',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                    ),
                  ),
                ]),
                const SizedBox(
                  width: 35,
                ),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: ColorOne.cbuttons,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SwapScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.sync_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Swap',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text('Transaction History'),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 198, 198, 198),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: ColorOne.cbuttons,
                        size: 7,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        'Transfer',
                        style: TextStyle(fontFamily: 'DM Sans', fontSize: 14),
                      ),
                      const Spacer(),
                      const Text(
                        '+0.020ETH',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: 14,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Text(
                        'From 0x1D3f86b089aDcaF5',
                        style: TextStyle(fontFamily: 'DM Sans', fontSize: 14),
                      ),
                     
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )]),
    ));
  }
}
