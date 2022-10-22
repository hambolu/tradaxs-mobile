import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class CoinCard extends StatelessWidget {
  CoinCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
     child:Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        
        height: 50,
       
        child: Row(
          children: [
           Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  
                ),
                height: 60,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.network(imageUrl),
                  
                ),
              ),
            
            Expanded(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    symbol,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 16,
                      fontFamily: 'DM Sans'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    price.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DM Sans'
                    ),
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  Text(
                    change.toDouble() < 0
                        ? change.toStringAsFixed(3).toString()
                        : '+${change.toStringAsFixed(3)}',
                    style: TextStyle(
                      color: change.toDouble() < 0 ? Colors.red : Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DM Sans'
                    ),
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  Text(
                    changePercentage.toDouble() < 0
                        ? '${changePercentage.toStringAsFixed(3)}%'
                        : '+${changePercentage.toStringAsFixed(3)}%',
                    style: TextStyle(
                      color: changePercentage.toDouble() < 0
                          ? Colors.red
                          : Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DM Sans'
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}