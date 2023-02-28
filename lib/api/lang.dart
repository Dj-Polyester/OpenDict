import 'package:flutter/widgets.dart';
import 'package:jgraph/api/loader.dart';

///Utility wrapper for languages
abstract class Lang<ExpEntry, CharEntry> {
  String? title;
  String? dirName;
  String? expBaseName;
  String? charBaseName;
  bool isPictographic = false;

  Widget expItemBuilder(List<ExpEntry> expItems, int index);
  Widget charItemBuilder(List<CharEntry> charItems, int index);

  Future<List<ExpEntry>> loadExpsFromDb(String s);
  Future<List<CharEntry>> loadCharsFromDb(String s);
  Loader_ loader = Loader_();

  Future<void> load<T>(
      String baseName, List<T> Function(String contents) parser);

  Future<void> loadExps() async {
    await load<ExpEntry>(expBaseName!, parseExps);
  }

  Future<void> loadChars() async {
    await load<CharEntry>(charBaseName!, parseChars);
  }

  Future<void> loadAll() async {
    await loadExps();
    await loadChars();
  }

  List<ExpEntry> parseExps(String contents);
  List<CharEntry> parseChars(String contents);
}
