import 'package:flutter/material.dart';
import 'package:jgraph/api/char_entry.dart';
import 'package:jgraph/api/lang.dart';
import 'package:tuple/tuple.dart';

abstract class CharScreen<CharReading, CharMeaning> extends StatelessWidget {
  const CharScreen(this.lang, this.charEntryItem, this.readingsAndMeanings,
      {super.key});

  final CharEntry charEntryItem;
  final Tuple2<List<CharReading>, List<CharMeaning>> readingsAndMeanings;
  final Lang lang;

  Widget? appBarBuilder(BuildContext context);
  Widget? readingItemBuilder(BuildContext context, CharReading charReading);
  Widget? meaningItemBuilder(BuildContext context, CharMeaning charMeaning);
  Widget charInfoBuilder(BuildContext context) => const SizedBox.shrink();
  List<Widget> charOtherInfoBuilder(BuildContext context) => [];

  @override
  Widget build(BuildContext context) {
    List<CharReading> listOfReadings = readingsAndMeanings.item1;
    List<CharMeaning> listOfSenses = readingsAndMeanings.item2;

    return Scaffold(
      appBar: appBarBuilder(context) as PreferredSizeWidget,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  charEntryItem.literal,
                  style: const TextStyle(fontSize: 100),
                ),
              ),
              charInfoBuilder(context),
              ...((listOfReadings.isEmpty)
                  ? []
                  : [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
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
                    ]),
              ...((listOfSenses.isEmpty)
                  ? []
                  : [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
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
                    ]),
              ...charOtherInfoBuilder(context),
            ],
          ),
        ),
      ),
    );
  }
}
