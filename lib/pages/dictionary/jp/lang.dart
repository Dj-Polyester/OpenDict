import 'dart:developer' as dev;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:jgraph/api/lang.dart';
import 'package:jgraph/db/db.dart';
import 'package:jgraph/iso639_2.dart';
import 'package:jgraph/pages/dictionary/jp/aux.dart';
import 'package:jgraph/pages/dictionary/jp/char_entry.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';
import 'package:tuple/tuple.dart';
import 'package:xml/xml.dart';

extension _XmlElement on XmlElement {
  List<String>? findExtractTextNullOtherwise(String name) {
    Iterable<XmlElement> iter = findAllElements(name);
    return (iter.isEmpty) ? null : iter.map((e) => e.text).toList();
  }

  List<String>? findExtractTextMapNullOtherwise(
      String name, Map<String, String> map) {
    Iterable<XmlElement> iter = findAllElements(name);
    return (iter.isEmpty)
        ? null
        : iter.map((e) {
            String eStr = e.text;
            return map[eStr.substring(1, eStr.length - 1)]!;
          }).toList();
  }

  String getTextContent(String name) {
    return getElement(name)!.text;
  }

  int getTextContentToInt(String name) {
    return int.parse(getTextContent(name));
  }

  String? getTextContentNullable(String name) {
    return getElement(name)?.text;
  }

  int? getTextContentNullableToInt(String name) {
    return int.tryParse(getTextContentNullable(name) ?? "");
  }

  bool exists(String name) {
    return findAllElements(name).isNotEmpty;
  }

  String getAttributeMap(
      String name, String defaultValue, Map<String, String> map) {
    return map[getAttribute(name) ?? defaultValue]!;
  }
}

// enum JPCharType {
//   hiragana,
//   katakana,
//   kanji,
// }

// extension Japanese on String {
//   String toKana(JPCharType type) {
//     String result = "";
//     String tmp = "";
//     late Map<String, String> map;

//     switch (type) {
//       case JPCharType.hiragana:
//         map = JPAux.hiraganaMap;
//         break;
//       case JPCharType.katakana:
//         map = JPAux.katakanaMap;
//         break;
//       default:
//         throw TypeError();
//     }
//     for (int i = 0; i < length; i++) {
//       var char = this[i];
//       tmp += char;
//       if (Globals.asciiVowels.contains(char) || char.trim() == "") {
//         result += map[tmp]!;
//         tmp = "";
//       } else if (Globals.numbers.contains(char)) {
//         result += JPAux.numberMap[tmp]!;
//         tmp = "";
//       }
//     }
//     return result;
//   }
//   bool convertible2Kana() {
//     String result = "";
//     String tmp = "";
//     for (int i = 0; i < length; i++) {
//       var char = this[i];
//       tmp += char;
//       if (Globals.asciiVowels.contains(char) || char.trim() == "") {
//         result += map[tmp]!;
//         tmp = "";
//       } else if (Globals.numbers.contains(char)) {
//         result += JPAux.numberMap[tmp]!;
//         tmp = "";
//       }
//     }
//     return result;
//   }
// }

class JPLang extends Lang<JPExpEntry, JPCharEntry> {
  @override
  String? title = "Japanese";
  @override
  String? dirName = "assets/jp";
  @override
  String? expBaseName = "JMdict_e.xml";
  @override
  String? charBaseName = "kanjidic2.xml";
  @override
  bool isPictographic = true;
  @override
  Widget charItemBuilder(List<JPCharEntry> charItems, int index) {
    // TODO: implement charBuilder
    throw UnimplementedError();
  }

  Tuple2<List<String>, List<String>> getListOfReadingsAndSenses(
    JPExpEntry item,
  ) {
    List<String> listOfSenses = [];
    List<String>? listOfReadingsIntermediary;

    if (item.kEles == null) {
      List<String> listOfReadings = [];
      for (REle rEle in item.rEles!) {
        listOfReadings.add(rEle.reb);
      }
      if (item.senseEles != null) {
        for (SenseEle senseEle in item.senseEles!) {
          String? tmp = senseEle.stagr?.join(", ");
          String? senseEleRefined = (tmp == null) ? "" : " ($tmp)";

          String senseTxt =
              "${senseEle.gloss?.map((e) => e.text).join(", ") ?? ""}$senseEleRefined";

          if (senseTxt.isNotEmpty) {
            listOfSenses.add(senseTxt);
          }
        }
      }
      listOfReadingsIntermediary = listOfReadings;
    } else {
      List<Tuple2<List<String>, List<String>>> listOfReadings = [];
      for (REle rEle in item.rEles!) {
        List<String> kEles = (rEle.reRestr == null)
            ? item.kEles!.map((e) => e.keb).toList()
            : rEle.reRestr!;

        List<int> indices = listOfReadings
            .where((element) =>
                const IterableEquality().equals(element.item1, kEles))
            .map((e) => listOfReadings.indexOf(e))
            .toList();

        if (indices.isEmpty) {
          listOfReadings.add(Tuple2(kEles, [rEle.reb]));
        } else {
          for (int index in indices) {
            listOfReadings[index].item2.add(rEle.reb);
          }
        }
      }
      if (item.senseEles != null) {
        for (SenseEle senseEle in item.senseEles!) {
          String? tmp = senseEle.stagk?.join(", ");
          String? senseEleRefined = (tmp == null) ? "" : " ($tmp)";

          String senseTxt =
              "${senseEle.gloss?.map((e) => e.text).join(", ") ?? ""}$senseEleRefined";

          if (senseTxt.isNotEmpty) {
            listOfSenses.add(senseTxt);
          }
        }
      }
      // dev.log(listOfReadings.toString(), name: "Japanese");
      listOfReadingsIntermediary = listOfReadings
          .map((e) => "${e.item1.join(", ")} (${e.item2.join(", ")})")
          .toList();
    }

    List<String> listOfReadingsRefined = (listOfReadingsIntermediary.length > 1)
        ? listOfReadingsIntermediary
            .asMap()
            .entries
            .map((e) => "${e.key + 1}. ${e.value}")
            .toList()
        : listOfReadingsIntermediary;

    List<String> listOfSensesRefined = (listOfSenses.length > 1)
        ? listOfSenses
            .asMap()
            .entries
            .map((e) => "${e.key + 1}. ${e.value}")
            .toList()
        : listOfSenses;

    return Tuple2(listOfReadingsRefined, listOfSensesRefined);
  }

  @override
  Widget expItemBuilder(List<JPExpEntry> expItems, int index) {
    JPExpEntry item = expItems[index];
    Tuple2<List<String>, List<String>> tuple2 =
        getListOfReadingsAndSenses(item);

    List<String> listOfReadings = tuple2.item1;
    List<String> listOfSenses = tuple2.item2;

    return ListTile(
      leading: const Icon(Icons.star_border_outlined),
      title: Text(listOfReadings.join("\n")),
      subtitle: Text(listOfSenses.join("\n")),
    );
  }

  @override
  Future<void> load<T>(
      String baseName, List<T> Function(String contents) parser) async {
    if (await Db.isEmpty<T>()) {
      String contents = await loader.loadAsset("$dirName/$baseName");
      List<T> entries = parser(contents);
      await loader.load2db<T>(entries);
    }
  }

  @override
  Future<List<JPExpEntry>> loadExpsFromDb(String s) async {
    String? hiragana, katakana;
    QueryBuilder<KEle, KEle, QAfterFilterCondition> Function(
        QueryBuilder<KEle, KEle, QFilterCondition>) qKEle;
    QueryBuilder<REle, REle, QAfterFilterCondition> Function(
        QueryBuilder<REle, REle, QFilterCondition>) qREle;
    QueryBuilder<Gloss, Gloss, QAfterFilterCondition> Function(
        QueryBuilder<Gloss, Gloss, QFilterCondition>) qGloss;

    // if (s.isAlphanumeric()) {
    //   hiragana = s.toKana(JPCharType.hiragana);
    //   katakana = s.toKana(JPCharType.katakana);

    //   qKEle = (q) => q
    //       .kebStartsWith(s)
    //       .or()
    //       .kebStartsWith(hiragana!)
    //       .or()
    //       .kebStartsWith(katakana!);
    //   qREle = (q) => q
    //       .rebStartsWith(s)
    //       .or()
    //       .rebStartsWith(hiragana!)
    //       .or()
    //       .rebStartsWith(katakana!);
    //   qGloss = (q) => q
    //       .textStartsWith(s)
    //       .or()
    //       .textStartsWith(hiragana!)
    //       .or()
    //       .textStartsWith(katakana!);
    // } else {
    qKEle = (q) => q.kebStartsWith(s);
    qREle = (q) => q.rebStartsWith(s);
    qGloss = (q) => q.textStartsWith(s);
    // }

    return await Db.instance
        .collection<JPExpEntry>()
        .filter()
        .kElesElement(qKEle)
        .or()
        .rElesElement(qREle)
        .or()
        .senseElesElement((q) => q.glossElement(qGloss))
        .findAll();
  }

  @override
  Future<List<JPCharEntry>> loadCharsFromDb(String s) {
    // TODO: implement loadCharsFromDb
    throw UnimplementedError();
  }

  @override
  List<JPCharEntry> parseChars(String contents) {
    // TODO: implement parseChars
    return XmlDocument.parse(contents).findAllElements("character").map((elem) {
      final List<Radical> radical = elem
          .getElement("radical")!
          .findAllElements("rad_value")
          .map((rawRadValue) => Radical()
            ..radType = rawRadValue.getAttributeMap(
                "rad_type", "classical", JPAux.radTypeMap)
            ..radValue = rawRadValue.text)
          .toList();

      XmlElement miscRaw = elem.getElement("misc")!;

      final Misc misc = Misc()
        ..freq = miscRaw.getTextContentNullableToInt("freq")
        ..strokeCount = miscRaw.getTextContentNullableToInt("freq")
        ..jlpt = miscRaw.getTextContentNullableToInt("jlpt")
        ..grade = JPAux.kanjiGradeMap[miscRaw.getTextContentNullable("grade")]
        ..radName = miscRaw.findExtractTextNullOtherwise("rad_name");

      return JPCharEntry(
        literal: elem.getTextContent("literal"),
        radical: radical,
        misc: misc,
      );
    }).toList();
  }

  @override
  List<JPExpEntry> parseExps(String contents) {
    return XmlDocument.parse(contents).findAllElements("entry").map((elem) {
      final List<KEle> kElems = elem
          .findAllElements("k_ele")
          .map((kElemRaw) => KEle()
            ..keb = kElemRaw.getTextContent("keb")
            ..keInf = kElemRaw.findExtractTextMapNullOtherwise(
                "ke_inf", JPAux.keInfMap)
            ..isCommon = kElemRaw.exists("ke_pri"))
          .toList();

      final List<REle> rElems = elem
          .findAllElements("r_ele")
          .map((rElemRaw) => REle()
            ..reb = rElemRaw.getTextContent("reb")
            ..reRestr = rElemRaw.findExtractTextNullOtherwise("re_restr")
            ..reInf = rElemRaw.findExtractTextMapNullOtherwise(
                "re_inf", JPAux.reInfMap)
            ..reNoKanji = rElemRaw.exists("re_nokanji")
            ..isCommon = rElemRaw.exists("re_pri"))
          .toList();
      List<String>? currPos, currMisc;

      final List<SenseEle> senseElems =
          elem.findAllElements("sense").map((senseElemRaw) {
        List<String>? pos =
            senseElemRaw.findExtractTextMapNullOtherwise("pos", JPAux.posMap);
        if (pos != null) {
          currPos = pos;
        }
        List<String>? misc =
            senseElemRaw.findExtractTextMapNullOtherwise("misc", JPAux.miscMap);
        if (misc != null) {
          currMisc = misc;
        }

        return SenseEle()
          ..stagk = senseElemRaw.findExtractTextNullOtherwise("stagk")
          ..stagr = senseElemRaw.findExtractTextNullOtherwise("stagr")
          ..ant = senseElemRaw.findExtractTextNullOtherwise("ant")
          ..xref = senseElemRaw.findExtractTextNullOtherwise("xref")
          ..pos = currPos
          ..field = senseElemRaw.findExtractTextMapNullOtherwise(
              "field", JPAux.fieldMap)
          ..misc = currMisc
          ..lsource = senseElemRaw
              .findAllElements("lsource")
              .map(
                (lsourceRaw) => LSource()
                  ..lang = lsourceRaw.getAttributeMap("lang", "eng", iso639)
                  ..lsTypeFull = lsourceRaw.getAttribute("ls_type") == null
                  ..waseiGo = lsourceRaw.getAttribute("ls_wasei") != null
                  ..text = lsourceRaw.text,
              )
              .toList()
          ..dial = senseElemRaw.findExtractTextMapNullOtherwise(
              "dial", JPAux.dialMap)
          ..gloss = senseElemRaw
              .findAllElements("gloss")
              .map(
                (glossRaw) => Gloss()
                  ..lang = glossRaw.getAttributeMap("lang", "eng", iso639)
                  ..gType = JPAux.gTypeMap[glossRaw.getAttribute("g_type")]
                  ..text = glossRaw.text,
              )
              .toList()
          ..sInf = senseElemRaw.findExtractTextNullOtherwise("s_inf");
      }).toList();
      return JPExpEntry(
        id: elem.getTextContentToInt("ent_seq"),
        kEles: (kElems.isEmpty) ? null : kElems,
        rEles: (rElems.isEmpty) ? null : rElems,
        senseEles: (senseElems.isEmpty) ? null : senseElems,
      );
    }).toList();
  }
}
