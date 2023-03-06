import 'package:flutter/material.dart';
import 'package:jgraph/pages/dictionary/jp/char_entry.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';
import 'package:tuple/tuple.dart';

class JPCharScreen extends StatelessWidget {
  const JPCharScreen(this.charEntryItem, this.readingsAndMeanings, {super.key});
  final JPCharEntry charEntryItem;
  final Tuple4<CharReading, CharReading, CharReading, String?>
      readingsAndMeanings;

  @override
  Widget build(BuildContext context) {
    List<CharReading> listOfReadings = [
      readingsAndMeanings.item1,
      readingsAndMeanings.item2,
      readingsAndMeanings.item3,
    ];

    String? meaningTxt = readingsAndMeanings.item4;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(charEntryItem.literal)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (listOfReadings.every((e) => e.value == null))
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
                  children: (e.value == null)
                      ? null
                      : [
                          TextSpan(
                            text: "${e.type}: ",
                            style: const TextStyle(fontSize: 20),
                          ),
                          TextSpan(
                            text: e.value,
                            style: const TextStyle(fontSize: 24),
                          )
                        ],
                  style: const TextStyle(fontSize: 20),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (meaningTxt == null)
                  ? const Text("There are no meanings available for this entry")
                  : const Text(
                      "Meanings",
                      style: TextStyle(fontSize: 30),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                meaningTxt ?? "",
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
