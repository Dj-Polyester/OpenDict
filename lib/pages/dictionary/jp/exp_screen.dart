import 'package:flutter/material.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';
import 'package:tuple/tuple.dart';

class JPExpScreen extends StatelessWidget {
  const JPExpScreen(this.expEntryItem, this.readingsAndMeanings);
  final JPExpEntry expEntryItem;
  final Tuple2<List<Reading>, List<Meaning>> readingsAndMeanings;
  @override
  Widget build(BuildContext context) {
    List<Reading> listOfReadings = readingsAndMeanings.item1;
    List<Meaning> listOfSenses = readingsAndMeanings.item2;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Dictionary")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (listOfSenses.isEmpty)
                  ? const Text(
                      "There are no readings available for this entry",
                      style: TextStyle(fontSize: 30),
                    )
                  : const Text(
                      "Readings",
                      style: TextStyle(fontSize: 30),
                    ),
            ),
            ...listOfReadings.map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text.rich(TextSpan(
                  children: (e.kanji == null)
                      ? [TextSpan(text: e.kana)]
                      : [
                          TextSpan(text: "${e.kanji} "),
                          TextSpan(
                            text: "(${e.kana})",
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                  style: const TextStyle(fontSize: 20),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (listOfSenses.isEmpty)
                  ? const Text("There are no meanings available for this entry")
                  : const Text(
                      "Meanings",
                      style: TextStyle(fontSize: 30),
                    ),
            ),
            ...listOfSenses.map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "${e.pos}\n",
                      style: const TextStyle(fontSize: 20),
                    ),
                    TextSpan(
                      text: "${e.key}. ${e.value}",
                      style: const TextStyle(fontSize: 24),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
