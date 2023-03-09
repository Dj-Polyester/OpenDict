import 'package:flutter/widgets.dart';
import 'package:jgraph/api/lang.dart';
import 'package:jgraph/pages/dictionary/chars.dart';
import 'package:jgraph/pages/dictionary/dictionary.dart';
import 'package:jgraph/pages/dictionary/jp/lang.dart';
import 'package:jgraph/pages/custom_page.dart';
import 'package:jgraph/pages/settings.dart';
import 'package:jgraph/pages/vocabulary.dart';
import 'package:jgraph/db/db.dart';

class GlobalModel extends ChangeNotifier {}

extension GlobalString on String {
  bool isAlphanumeric() => RegExp(r'^[a-z]|[A-Z]|[0-9]+$').hasMatch(this);
  bool isAlpha() => RegExp(r'^[a-z]|[A-Z]+$').hasMatch(this);
  bool isNumeric() => RegExp(r'^[0-9]+$').hasMatch(this);
}

class Globals {
  static Db? instance;

  static List<CustomPage> pages = [
    Dictionary(),
    LangChars(),
    Vocabulary(),
    Settings(),
  ];

  static List<Lang> dicts = [
    JPLang(),
  ];
  static const List<String> asciiVowels = ["a", "i", "u", "e", "o"];
  static const String numbers = "0123456789";
}
