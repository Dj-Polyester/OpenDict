import 'package:flutter/material.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';
import 'package:tuple/tuple.dart';

class JPExpScreen extends StatelessWidget {
  const JPExpScreen(this.expEntryItem, this.readingsAndMeanings);
  final JPExpEntry expEntryItem;
  final Tuple2<List<String>, List<String>> readingsAndMeanings;
  @override
  Widget build(BuildContext context) {
    List<String> listOfReadings = readingsAndMeanings.item1;
    List<String> listOfSenses = readingsAndMeanings.item2;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(listOfReadings.join("\n"))),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          Text(
            listOfSenses.join("\n"),
            style: const TextStyle(fontSize: 20),
          ),
          Text(expEntryItem.senseEles?.map((e) => e.sInf).join("\n") ?? "")
        ]),
      ),
    );
  }
}
