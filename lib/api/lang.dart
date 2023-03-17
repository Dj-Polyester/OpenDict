import 'package:flutter/widgets.dart';
import 'package:opendict/api/loader.dart';

///Utility wrapper for languages
abstract class Lang<ExpEntry, CharEntry> {
  String? title;
  String? dirName;
  String? expBaseName;
  String? charBaseName;
  bool hasChars = false;

  Widget charEntryItemBuilder(BuildContext context, CharEntry charEntryItem);
  Widget expEntryItemBuilder(BuildContext context, ExpEntry expEntryItem);

  Future<List<CharEntry>> loadCharsFromDb(String s);
  Future<List<ExpEntry>> loadExpsFromDb(String s);
  Loader_ loader = Loader_();

  Future<void> load<T>(
      String baseName, Future<List<T>> Function(String contents) parser);

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

  Future<List<ExpEntry>> parseExps(String contents);
  Future<List<CharEntry>> parseChars(String contents);
}
