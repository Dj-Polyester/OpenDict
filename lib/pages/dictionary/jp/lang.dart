import 'dart:convert';
import 'dart:developer' as dev;
import 'package:jgraph/pages/dictionary/jp/char_screen.dart';
import 'package:path/path.dart' as p;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:jgraph/api/lang.dart';
import 'package:jgraph/db/db.dart';
import 'package:jgraph/iso639_2.dart';
import 'package:jgraph/pages/dictionary/jp/aux.dart';
import 'package:jgraph/pages/dictionary/jp/char_entry.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';
import 'package:jgraph/pages/dictionary/jp/exp_screen.dart';
import 'package:tuple/tuple.dart';
import 'package:xml/xml.dart';

extension _XmlElement on XmlElement {
  List<String>? findExtractTextNullOtherwise(String name) {
    Iterable<XmlElement> iter = findAllElements(name);
    return (iter.isEmpty) ? null : iter.map((e) => e.text).toList();
  }

  List<String>? findExtractTextFilterNullOtherwise(String name) {
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

extension _List on List {
  List<String> makeBullets() => (length > 1)
      ? asMap().entries.map((e) => "${e.key + 1}. ${e.value}").toList()
      : cast();
}

extension XmlElementList on Iterable<XmlElement> {
  List<String> getElementsTextWithAttr(name, value) =>
      where((element) => element.getAttribute(name) == value)
          .map((e) => e.text)
          .toList();
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
class ExpMeaning {
  ExpMeaning({
    required this.key,
    this.pos,
    this.value,
  });
  int key;
  String? pos;
  String? value;
}

class ExpReading {
  ExpReading({
    required this.key,
    this.kanji,
    this.kana,
  });
  int key;
  String? kanji;
  String? kana;
}

class CharReading {
  CharReading({
    required this.type,
    this.value,
  });
  String type;
  String? value;
}

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
  bool hasChars = true;

  ///Extract onyomi, kunyomi, nanori and meanings
  Tuple4<CharReading, CharReading, CharReading, String?>
      getListOfReadingsAndMeaningsFromChar(
    JPCharEntry charEntryItem,
  ) {
    String? onyomiTxt = charEntryItem.readingMeaning?.onyomi?.join("、");
    String? kunyomiTxt = charEntryItem.readingMeaning?.kunyomi?.join("、");
    String? nanoriTxt = charEntryItem.readingMeaning?.nanori?.join("、");
    String? meaningTxt = charEntryItem.readingMeaning?.meaning?.join(", ");

    return Tuple4(
        CharReading(type: "on", value: onyomiTxt),
        CharReading(type: "kun", value: kunyomiTxt),
        CharReading(type: "nanori (reading(s) in names)", value: nanoriTxt),
        meaningTxt);
  }

  @override
  Widget charEntryItemBuilder(BuildContext context, JPCharEntry charEntryItem) {
    Tuple4<CharReading, CharReading, CharReading, String?> tuple4 =
        getListOfReadingsAndMeaningsFromChar(charEntryItem);

    List<CharReading> readings = [
      tuple4.item1,
      tuple4.item2,
      tuple4.item3,
    ];

    String? meaningTxt = tuple4.item4;

    return ListTile(
      leading: const Icon(Icons.star_border_outlined),
      title: Text(
          "${charEntryItem.literal}${(meaningTxt == null) ? "" : " ($meaningTxt)"}"),
      subtitle: Text(readings
          .map((e) => (e.value == null) ? "" : "${e.type}: ${e.value}")
          .join("\n")),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => JPCharScreen(charEntryItem, tuple4))),
    );
  }

  void constructListOfSenses(
    JPExpEntry expEntryItem,
    List<ExpMeaning> listOfSenses,
  ) {
    if (expEntryItem.senseEles != null) {
      int senseKey = 1;
      for (SenseEle senseEle in expEntryItem.senseEles!) {
        List<String> stag = (senseEle.stagk ?? []) + (senseEle.stagr ?? []);
        String tmp = stag.join("、");

        String senseEleOtherParts = (senseEle.sInf == null && tmp.isEmpty)
            ? ""
            : (senseEle.sInf == null && tmp.isNotEmpty)
                ? " (valid for $tmp)"
                : (senseEle.sInf != null && tmp.isEmpty)
                    ? " (${senseEle.sInf!.join(", ")})"
                    : " (valid for $tmp, ${senseEle.sInf!.join(", ")})";

        String senseTxt =
            "${senseEle.gloss?.map((e) => e.text).join(", ") ?? ""}$senseEleOtherParts";

        if (senseTxt.isNotEmpty) {
          listOfSenses.add(ExpMeaning(
              key: senseKey++, pos: senseEle.pos?.join(", "), value: senseTxt));
        }
      }
    }
  }

  Tuple2<List<ExpReading>, List<ExpMeaning>>
      getListOfReadingsAndMeaningsFromExp(
    JPExpEntry expEntryItem,
  ) {
    List<ExpReading>? listOfReadingsRefined;
    List<ExpMeaning> listOfSenses = [];
    int readingKey = 1;
    if (expEntryItem.kEles == null) {
      List<ExpReading> listOfReadings = [];
      for (REle rEle in expEntryItem.rEles!) {
        listOfReadings.add(ExpReading(key: readingKey++, kana: rEle.reb));
      }
      listOfReadingsRefined = listOfReadings;
      constructListOfSenses(expEntryItem, listOfSenses);
    } else {
      List<Tuple2<List<String>, List<String>>> listOfReadings = [];
      for (REle rEle in expEntryItem.rEles!) {
        List<String> kEles = (rEle.reRestr == null)
            ? expEntryItem.kEles!.map((e) => e.keb).toList()
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

      // dev.log(listOfReadings.toString(), name: "Japanese");
      listOfReadingsRefined = listOfReadings
          .map((e) => ExpReading(
              key: readingKey++,
              kanji: e.item1.join("、"),
              kana: e.item2.join("、")))
          .toList();

      constructListOfSenses(expEntryItem, listOfSenses);
    }

    return Tuple2(listOfReadingsRefined, listOfSenses);
  }

  expEntryDetailsBuilder(JPExpEntry expEntryItem) {}

  @override
  Widget expEntryItemBuilder(BuildContext context, JPExpEntry expEntryItem) {
    Tuple2<List<ExpReading>, List<ExpMeaning>> tuple2 =
        getListOfReadingsAndMeaningsFromExp(expEntryItem);

    List<ExpReading> listOfReadings = tuple2.item1;
    List<ExpMeaning> listOfSenses = tuple2.item2;

    return ListTile(
      leading: const Icon(Icons.star_border_outlined),
      title: Text(listOfReadings
          .map((e) => (e.kanji == null) ? e.kana : "${e.kanji} (${e.kana})")
          .toList()
          .makeBullets()
          .join("\n")),
      subtitle: Text(
          listOfSenses.map((e) => e.value).toList().makeBullets().join("\n")),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => JPExpScreen(expEntryItem, tuple2))),
    );
  }

  @override
  Future<void> load<T>(
      String baseName, Future<List<T>> Function(String contents) parser) async {
    if (await Db.isEmpty<T>()) {
      String contents = await loader.loadAsset(p.join(dirName!, baseName));
      List<T> entries = await parser(contents);
      await loader.load2db<T>(entries);
    }
  }

  @override
  Future<List<JPCharEntry>> loadCharsFromDb(String s) async {
    // TODO: implement loadCharsFromDb
    return await Db.instance
        .collection<JPCharEntry>()
        .filter()
        .literalEqualTo(s)
        .or()
        .readingMeaning((q) => q
            .kunyomiElementStartsWith(s)
            .or()
            .onyomiElementStartsWith(s)
            .or()
            .nanoriElementStartsWith(s)
            .or()
            .meaningElementStartsWith(s))
        .findAll();
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

    qKEle = (q) => q.kebStartsWith(s);
    qREle = (q) => q.rebStartsWith(s);
    qGloss = (q) => q.textStartsWith(s);

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

  Map<String, List<String>> parseKradfile(String contents) {
    Iterable<String> contentsNoComments =
        LineSplitter.split(contents).where((line) {
      String lineTrimmed = line.trim();
      return lineTrimmed[0] != "#" && lineTrimmed != "";
    });
    Iterable<List<String>> contentsNoCommentsLiteralAndParts =
        contentsNoComments.map((line) => line.trim().split(" : "));

    return {
      for (var literalAndParts in contentsNoCommentsLiteralAndParts)
        literalAndParts.first.trimRight():
            literalAndParts.last.split(" ").map((e) => e.trim()).toList()
    };
  }

  Map<String, List<String>> parseRadkfile(String contents) {
    Iterable<String> contentsNoComments =
        LineSplitter.split(contents).where((line) {
      String lineTrimmed = line.trim();
      return lineTrimmed[0] != "#" && lineTrimmed != "";
    });

    String kanjiElems = "";
    String? currRadical;

    Map<String, List<String>> mapRadk = {};

    for (String line in contentsNoComments) {
      if (line[0] == "\$") {
        if (currRadical != null) {
          mapRadk[currRadical] = kanjiElems.split("");
        }
        currRadical = line.split(" ")[1].trim();
        kanjiElems = "";
      } else {
        kanjiElems += line.trim();
      }
    }

    return mapRadk;
  }

  @override
  Future<List<JPCharEntry>> parseChars(String contents) async {
    Map<String, List<String>> kradfile = parseKradfile(
        await loader.loadAsset(p.join(dirName!, "kradfile.utf8")));
    Map<String, List<String>> kradfile2 = parseKradfile(
        await loader.loadAsset(p.join(dirName!, "kradfile2.utf8")));
    Map<String, List<String>> radkfile = parseRadkfile(
        await loader.loadAsset(p.join(dirName!, "radkfile.utf8")));
    Map<String, List<String>> radkfile2 = parseRadkfile(
        await loader.loadAsset(p.join(dirName!, "radkfile2.utf8")));

    return Future.value(
      XmlDocument.parse(contents).findAllElements("character").map((elem) {
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

        final XmlElement? readingMeaningRaw =
            elem.getElement("reading_meaning");
        final Iterable<XmlElement>? readingRaw =
            readingMeaningRaw?.findAllElements("reading");

        final ReadingMeaning readingMeaning = ReadingMeaning()
          ..meaning = readingMeaningRaw?.findExtractTextNullOtherwise("meaning")
          ..nanori = readingMeaningRaw?.findExtractTextNullOtherwise("nanori")
          ..onyomi = readingRaw?.getElementsTextWithAttr("r_type", "ja_on")
          ..kunyomi = readingRaw?.getElementsTextWithAttr("r_type", "ja_kun");

        String literal = elem.getTextContent("literal");

        List<String> kradfileCombined =
            {...?kradfile[literal], ...?kradfile2[literal]}.toList();
        List<String> radkfileCombined =
            {...?radkfile[literal], ...?radkfile2[literal]}.toList();

        return JPCharEntry(
          literal: literal,
          radical: radical,
          misc: misc,
          readingMeaning: readingMeaning,
          parts: (kradfileCombined.isEmpty) ? null : kradfileCombined,
          kanjiElems: (radkfileCombined.isEmpty) ? null : radkfileCombined,
        );
      }).toList(),
    );
  }

  @override
  Future<List<JPExpEntry>> parseExps(String contents) {
    return Future.value(
      XmlDocument.parse(contents).findAllElements("entry").map((elem) {
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
          List<String>? misc = senseElemRaw.findExtractTextMapNullOtherwise(
              "misc", JPAux.miscMap);
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
      }).toList(),
    );
  }
}
