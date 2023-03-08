import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:jgraph/api/exp_screen.dart';
import 'package:jgraph/api/lang.dart';
import 'package:jgraph/db/db.dart';
import 'package:jgraph/pages/dictionary/jp/aux.dart';
import 'package:jgraph/pages/dictionary/jp/char_entry.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class ClassName {}

class JPExpScreen extends ExpScreen<JPExpReading, JPExpMeaning> {
  const JPExpScreen(super.lang, super.expEntryItem, super.readingsAndMeanings,
      {super.key});
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
  Widget? meaningItemBuilder(BuildContext context, JPExpMeaning expMeaning) {
    SenseEle senseEle =
        (expEntryItem as JPExpEntry).senseEles![expMeaning.key - 1];

    return Text.rich(TextSpan(
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
        ...((senseEle.xref == null)
            ? []
            : [
                const TextSpan(
                  text: "see also ",
                  style: TextStyle(fontSize: 20),
                ),
                ...senseEle.xref!.map((e) => TextSpan(
                    text: e,
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        List<List<JPExpEntry>> result = await Future.wait(e
                            .split("・")
                            .map((e) => loadExpsFromDbThatMatches(e.trim())));

                        if (result.isNotEmpty) {
                          expEntryItemBuilder(context, result.first.first);
                        }
                      }))
              ]),
      ],
    ));
  }

  @override
  Future<Widget> charListBuilder(BuildContext context) async {
    JPExpEntry jpExpEntryItem = expEntryItem as JPExpEntry;

    Iterable<Set<String>>? iterOfSets = jpExpEntryItem.kEles?.map((e) =>
        e.keb.split("").whereNot((e) => JPAux.kanaString.contains(e)).toSet());

    Set<String>? reducedIterOfSets = iterOfSets?.reduce((value, element) {
      value.addAll(element);
      return value;
    });
    if (reducedIterOfSets == null) {
      return const SizedBox.shrink();
    }
    List<List<JPCharEntry>> result = await Future.wait(
        reducedIterOfSets.map((e) => loadCharsFromDb(e.trim())));

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
            "Characters",
            style: TextStyle(fontSize: 30),
          ),
        ),
        ...reducedResult
            .map((e) => (lang as JPLang).charEntryItemBuilder(context, e))
      ],
    );
  }

  @override
  Future<Widget> expListBuilder(BuildContext context) async {
    JPExpEntry jpExpEntryItem = expEntryItem as JPExpEntry;

    Iterable<Set<String>>? iterOfSets = jpExpEntryItem.kEles?.map((e) =>
        e.keb.split("").whereNot((e) => JPAux.kanaString.contains(e)).toSet());

    Set<String>? reducedIterOfSets = iterOfSets?.reduce((value, element) {
      value.addAll(element);
      return value;
    });
    if (reducedIterOfSets == null) {
      return const SizedBox.shrink();
    }
    List<List<JPExpEntry>> result = await Future.wait(
        reducedIterOfSets.map((e) => loadExpsFromDbThatContains(e.trim())));

    List<JPExpEntry> reducedResult = result.reduce((value, element) {
      value.addAll(element);
      return value;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            "Related expressions",
            style: TextStyle(fontSize: 30),
          ),
        ),
        ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: reducedResult.length,
          itemBuilder: (BuildContext context, int index) => (lang as JPLang)
              .expEntryItemBuilder(context, reducedResult[index]),
        ),
      ],
    );
  }

  void expEntryItemBuilder(BuildContext context, JPExpEntry expEntryItemOther) {
    Tuple2<List<JPExpReading>, List<JPExpMeaning>> tuple2 =
        (lang as JPLang).getListOfReadingsAndMeaningsFromExp(expEntryItemOther);

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => JPExpScreen(lang, expEntryItemOther, tuple2)));
  }

  Future<List<JPExpEntry>> loadExpsFromDbThatMatches(String s) async {
    QueryBuilder<KEle, KEle, QAfterFilterCondition> Function(
        QueryBuilder<KEle, KEle, QFilterCondition>) qKEle;

    qKEle = (q) => q.kebMatches(s);

    return await Db.instance
        .collection<JPExpEntry>()
        .filter()
        .kElesElement(qKEle)
        .findAll();
  }

  Future<List<JPExpEntry>> loadExpsFromDbThatContains(String s) async {
    QueryBuilder<KEle, KEle, QAfterFilterCondition> Function(
        QueryBuilder<KEle, KEle, QFilterCondition>) qKEle;

    qKEle = (q) => q.kebContains(s);

    return await Db.instance
        .collection<JPExpEntry>()
        .filter()
        .kElesElement(qKEle)
        .findAll();
  }

  Future<List<JPCharEntry>> loadCharsFromDb(String s) async {
    // TODO: implement loadCharsFromDb
    return await Db.instance
        .collection<JPCharEntry>()
        .filter()
        .literalEqualTo(s)
        .findAll();
  }
}
