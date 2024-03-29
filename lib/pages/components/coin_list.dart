import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoinList extends StatefulWidget {
  const CoinList({super.key});

  @override
  State<CoinList> createState() => _CoinListState();
}

class _CoinListState extends State<CoinList> {
  final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Ethereum ${entries[index]}')),
    );
  }
);
  }
}
