import 'package:isar/isar.dart';
import 'package:jgraph/api/entry.dart';

@embedded
class ReadingMeaning {
  List<String>? onyomi;
  List<String>? kunyomi;
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

  int? freq;
  int? jlpt;

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
