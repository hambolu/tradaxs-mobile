import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/colors_class.dart';

class ReceiveCoinScreen extends StatefulWidget {
  const ReceiveCoinScreen({super.key});

  @override
  State<ReceiveCoinScreen> createState() => _ReceiveCoinScreenState();
}

class _ReceiveCoinScreenState extends State<ReceiveCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recieve Ethereum',
                      style: TextStyle(fontSize: 14, fontFamily: 'DM Sans'),
                    ),
                    Text(
                      'Coin',
                      style: TextStyle(fontSize: 12, fontFamily: 'DM Sans'),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 60,),
            Center(
              child: Column(
                children: [
                  Image(
                      image: AssetImage(
                    'images/qrcode.png',
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Address: 0x1D3f86b089aDcaF5'),
                  SizedBox(
                    height: 5,
                  ),
                 
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  CircleAvatar(
                    backgroundColor: ColorOne.cbuttons,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.copy,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Copy',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 35,
                ),
                
                SizedBox(
                  width: 35,
                ),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: ColorOne.cbuttons,
                    child: IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.share,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            
              Container(
                padding: EdgeInsets.symmetric(horizontal:40),
                alignment: Alignment.center,
                child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Send only Ethereum Smart chain (ETH) to this adress. \n Sending any other coin may result in permanent loss')
                ],)
              )
             
                 
          ],
        ),
      )),
    );
  }
}