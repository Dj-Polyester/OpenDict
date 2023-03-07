import 'package:flutter/material.dart';
import 'package:jgraph/api/char_entry.dart';
import 'package:tuple/tuple.dart';

abstract class CharScreen<CharReading> extends StatelessWidget {
  const CharScreen(this.charEntryItem, this.readingsAndMeanings, {super.key});

  final CharEntry charEntryItem;
  final Tuple2<Map<String, String>, String?> readingsAndMeanings;

  Widget? appBarBuilder(BuildContext context);
  Widget? readingItemBuilder(
      BuildContext context, MapEntry<String, String> charReading);
  Widget? meaningItemBuilder(BuildContext context, String? charMeaning);

  @override
  Widget build(BuildContext context) {
    Map<String, String> mapOfReadings = readingsAndMeanings.item1;
    String? meaningTxt = readingsAndMeanings.item2;
    return Scaffold(
      appBar: appBarBuilder(context) as PreferredSizeWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (mapOfReadings.isEmpty)
                  ? const Text(
                      "There are no readings available for this entry",
                      style: TextStyle(fontSize: 30),
                    )
                  : const Text(
                      "Readings",
                      style: TextStyle(fontSize: 30),
                    ),
            ),
            ...mapOfReadings.entries.map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: readingItemBuilder(context, e),
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
              child: meaningItemBuilder(context, meaningTxt),
            ),
          ],
        ),
      ),
    );
  }
}
