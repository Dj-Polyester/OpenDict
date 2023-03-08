import 'package:flutter/material.dart';
import 'package:jgraph/api/char_screen.dart';
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
          : "old JLPT N${jpCharEntryItem.misc.jlpt} kanji (that the old level 2 is now divided between N2 and N3, since 2010)",
      (jpCharEntryItem.misc.freq == null)
          ? null
          : "${jpCharEntryItem.misc.freq}th in 2500 kanji",
    ];
    tmp.removeWhere((e) => e == null);

    return Text(
      tmp.join("\n"),
      style: const TextStyle(fontSize: 20.0),
    );
  }

  // Future<Widget> partsListBuilder(BuildContext context) {
  //   JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;
  // }

  // Future<Widget> kanjiElemsListBuilder(BuildContext context) {
  //   JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;
  // }

  // @override
  // List<Widget> charOtherInfoBuilder(BuildContext context) {
  //   // TODO: implement charOtherInfoBuilder
  //   JPCharEntry jpCharEntryItem = charEntryItem as JPCharEntry;
  //   return [
  //     ...((jpCharEntryItem.parts == null)
  //         ? []
  //         : [
  //             Padding(
  //               padding: const EdgeInsets.only(top: 16.0),
  //               child: FutureBuilder(
  //                 future: partsListBuilder(context),
  //                 builder: (context, snapshot) {
  //                   if (snapshot.hasData) {
  //                     return snapshot.data!;
  //                   }
  //                   if (snapshot.hasError) {
  //                     return const Expanded(
  //                         child: Text(
  //                       "Error: Could not acquire the parts associated with this entry",
  //                       style: TextStyle(fontSize: 20),
  //                     ));
  //                   }
  //                   return const CircularProgressIndicator();
  //                 },
  //               ),
  //             ),
  //           ]),
  //     ...((jpCharEntryItem.kanjiElems == null)
  //         ? []
  //         : [
  //             Padding(
  //               padding: const EdgeInsets.only(top: 16.0),
  //               child: FutureBuilder(
  //                 future: kanjiElemsListBuilder(context),
  //                 builder: (context, snapshot) {
  //                   if (snapshot.hasData) {
  //                     return snapshot.data!;
  //                   }
  //                   if (snapshot.hasError) {
  //                     return const Expanded(
  //                         child: Text(
  //                       "Error: Could not acquire the kanji elements associated with this entry",
  //                       style: TextStyle(fontSize: 20),
  //                     ));
  //                   }
  //                   return const CircularProgressIndicator();
  //                 },
  //               ),
  //             ),
  //           ]),
  //   ];
  // }
}
