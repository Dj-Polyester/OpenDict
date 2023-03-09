import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:jgraph/api/char_screen.dart';
import 'package:jgraph/db/db.dart';
import 'package:jgraph/pages/dictionary/jp/char_entry.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';

class JPCharScreen extends CharScreen<JPCharReading, JPCharMeaning> {
  const JPCharScreen(super.lang, super.charEntryItem, super.readingsAndMeanings,
      {super.key});

  @override
  Widget? appBarBuilder(BuildContext context) =>
      AppBar(title: Text(charEntryItem.literal));

  @override
  Widget? readingItemBuilder(BuildContext context, JPCharReading charReading) =>
      Text.rich(TextSpan(
        children: [
          TextSpan(
            text: "${charReading.type}: ",
            style: const TextStyle(fontSize: 20),
          ),
          TextSpan(
            text: charReading.value,
            style: const TextStyle(fontSize: 24),
          )
        ],
        style: const TextStyle(fontSize: 20),
      ));

  @override
  Widget? meaningItemBuilder(BuildContext context, JPCharMeaning charMeaning) =>
      Text(
        "${charMeaning.key}. ${charMeaning.value}",
        style: const TextStyle(fontSize: 24),
      );

  @override
  Widget charInfoBuilder(BuildContext context) {
    JPCharEntry jpCharEntryItem = (charEntryItem as JPCharEntry);

    List<String?> tmp = [
      (jpCharEntryItem.misc.strokeCount == null)
          ? null
          : "${jpCharEntryItem.misc.strokeCount} strokes",
      (jpCharEntryItem.misc.grade == null) ? null : jpCharEntryItem.misc.grade,
      (jpCharEntryItem.misc.jlpt == null)
          ? null
          : "old JLPT N${jpCharEntryItem.misc.jlpt} kanji (old N2 is now divided between new N2 and N3, since 2010)",
      (jpCharEntryItem.misc.freq == null)
          ? null
          : "${jpCharEntryItem.misc.freq} of 2500 most used kanji in newspapers",
    ];
    tmp.removeWhere((e) => e == null);

    return Text(
      tmp.join("\n"),
      style: const TextStyle(fontSize: 20.0),
    );
  }

  Future<Widget> partsListBuilder(BuildContext context) async {
    JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;

    List<List<JPCharEntry>> result = await Future.wait(
        jpCharEntryItem.parts!.map((e) => loadCharsFromDb(e.trim())));

    List<JPCharEntry> reducedResult = result.reduce((value, element) {
      value.addAll(element);
      return value;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            "Parts",
            style: TextStyle(fontSize: 30),
          ),
        ),
        ...reducedResult
            .map((e) => (lang as JPLang).charEntryItemBuilder(context, e))
      ],
    );
  }

  Future<Widget> kanjiElemsListBuilder(BuildContext context) async {
    JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;

    List<List<JPCharEntry>> result = await Future.wait(
        jpCharEntryItem.kanjiElems!.map((e) => loadCharsFromDb(e.trim())));

    List<JPCharEntry> reducedResult = result.reduce((value, element) {
      value.addAll(element);
      return value;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            "Expressions with compound kanji",
            style: TextStyle(fontSize: 30),
          ),
        ),
        ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: reducedResult.length,
          itemBuilder: (BuildContext context, int index) => (lang as JPLang)
              .charEntryItemBuilder(context, reducedResult[index]),
        ),
      ],
    );
  }

  @override
  List<Widget> charOtherInfoBuilder(BuildContext context) {
    JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;
    return [
      ...((jpCharEntryItem.parts == null)
          ? []
          : [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: FutureBuilder(
                  future: partsListBuilder(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!;
                    }
                    if (snapshot.hasError) {
                      return const Expanded(
                          child: Text(
                        "Error: Could not acquire the parts associated with this entry",
                        style: TextStyle(fontSize: 20),
                      ));
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ]),
      ...((jpCharEntryItem.kanjiElems == null)
          ? []
          : [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: FutureBuilder(
                  future: kanjiElemsListBuilder(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!;
                    }
                    if (snapshot.hasError) {
                      return const Expanded(
                          child: Text(
                        "Error: Could not acquire the kanji elements associated with this entry",
                        style: TextStyle(fontSize: 20),
                      ));
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ]),
    ];
  }

  Future<List<JPCharEntry>> loadCharsFromDb(String s) async {
    return await Db.instance
        .collection<JPCharEntry>()
        .filter()
        .literalEqualTo(s)
        .findAll();
  }
}
