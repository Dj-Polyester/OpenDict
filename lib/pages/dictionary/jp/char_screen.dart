import 'package:flutter/material.dart';
import 'package:jgraph/api/char_screen.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';

class JPCharScreen extends CharScreen<JPCharReading> {
  const JPCharScreen(super.charEntryItem, super.readingsAndMeanings,
      {super.key});

  @override
  Widget? appBarBuilder(BuildContext context) =>
      AppBar(title: Text(charEntryItem.literal));

  @override
  Widget? readingItemBuilder(
          BuildContext context, MapEntry<String, String> charReading) =>
      Text.rich(TextSpan(
        children: [
          TextSpan(
            text: "${charReading.key}: ",
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
  Widget? meaningItemBuilder(BuildContext context, String? charMeaning) => Text(
        charMeaning ?? "",
        style: const TextStyle(fontSize: 24),
      );
}
