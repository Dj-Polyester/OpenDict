import 'package:flutter/widgets.dart';
import 'package:opendict/api/lang.dart';
import 'package:opendict/pages/dictionary/chars.dart';
import 'package:opendict/pages/dictionary/dictionary.dart';
import 'package:opendict/pages/dictionary/jp/lang.dart';
import 'package:opendict/pages/custom_page.dart';
import 'package:opendict/db/db.dart';

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
    // Settings(),
  ];

  static List<Lang> dicts = [
    JPLang(),
  ];
  static const List<String> asciiVowels = ["a", "i", "u", "e", "o"];
  static const String numbers = "0123456789";
}
