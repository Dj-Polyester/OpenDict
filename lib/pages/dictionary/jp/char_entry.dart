import 'package:isar/isar.dart';
import 'package:jgraph/api/entry.dart';

part 'char_entry.g.dart';

@embedded
class ReadingMeaning {
  List<String>? onyomi;
  List<String>? kunyomi;
  List<String>? nanori;
  List<String>? meaning;
}

@embedded
class Radical {
  String? radType;
  String? radValue;
}

@embedded
class Misc {
  ///grade?
  String? grade;

  ///stroke_count+, first one is the correct stroke count
  ///of the kanji (including the radical(s)). Technically
  ///only the first one will be stored
  int? strokeCount;

  ///freq?, frequency ranking among the 2500 kanji
  int? freq;

  ///jlpt?, old jlpt level. The new levels are regarded as
  ///being similar to the old levels except that the old level 2 is
  ///now divided between N2 and N3
  int? jlpt;

  ///rad_name*, if present the entry/literal is a radical
  List<String>? radName;
}

@collection
class JPCharEntry extends CharEntry {
  JPCharEntry({
    required super.literal,
    required this.radical,
    required this.misc,
    this.readingMeaning,
  });

  final List<Radical> radical;
  final Misc misc;
  final ReadingMeaning? readingMeaning;
}
