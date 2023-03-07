import 'package:flutter/material.dart';
import 'package:jgraph/api/char_entry.dart';
import 'package:jgraph/api/exp_entry.dart';
import 'package:tuple/tuple.dart';

class ExpScreenModel {
  List<CharEntry> charItems = [];
}

abstract class ExpScreen<ExpReading, ExpMeaning> extends StatelessWidget {
  const ExpScreen(this.expEntryItem, this.readingsAndMeanings, {super.key});
  final ExpEntry expEntryItem;
  final Tuple2<List<ExpReading>, List<ExpMeaning>> readingsAndMeanings;

  Widget? readingItemBuilder(BuildContext context, ExpReading expReading);
  Widget? meaningItemBuilder(BuildContext context, ExpMeaning expMeaning);
  Widget? appBarBuilder(
      BuildContext context, List listOfReadings, List listOfSenses);

  @override
  Widget build(BuildContext context) {
    List<ExpReading> listOfReadings = readingsAndMeanings.item1;
    List<ExpMeaning> listOfSenses = readingsAndMeanings.item2;
    return Scaffold(
      appBar: appBarBuilder(context, listOfReadings, listOfSenses)
          as PreferredSizeWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: (listOfReadings.isEmpty)
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
                child: readingItemBuilder(context, e),
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
                child: meaningItemBuilder(context, e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
