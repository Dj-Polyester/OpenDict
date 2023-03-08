import 'package:flutter/material.dart';
import 'package:jgraph/api/exp_screen.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';

class ClassName {}

class JPExpScreen extends ExpScreen<JPExpReading, JPExpMeaning> {
  const JPExpScreen(super.expEntryItem, super.readingsAndMeanings, {super.key});

  @override
  Widget? appBarBuilder(
          BuildContext context, List listOfReadings, List listOfSenses) =>
      AppBar(
          title: Text((listOfReadings.first.kanji == null)
              ? listOfReadings.first.kana!.split("、").first
              : listOfReadings.first.kanji!.split("、").first));

  @override
  Widget? readingItemBuilder(BuildContext context, JPExpReading expReading) =>
      Text.rich(TextSpan(
        children: (expReading.kanji == null)
            ? [TextSpan(text: "${expReading.key}. ${expReading.kana}")]
            : [
                TextSpan(text: "${expReading.key}. ${expReading.kanji} "),
                TextSpan(
                  text: "(${expReading.kana})",
                  style: const TextStyle(fontSize: 16),
                )
              ],
        style: const TextStyle(fontSize: 20),
      ));

  @override
  Widget? meaningItemBuilder(BuildContext context, JPExpMeaning expMeaning) =>
      Text.rich(TextSpan(
        children: [
          TextSpan(
            text: "${expMeaning.pos}\n",
            style: const TextStyle(fontSize: 20),
          ),
          TextSpan(
            text: "${expMeaning.key}. ${expMeaning.gloss}",
            style: const TextStyle(fontSize: 24),
          ),
          TextSpan(
            text: " ${expMeaning.sInf}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ));
}
