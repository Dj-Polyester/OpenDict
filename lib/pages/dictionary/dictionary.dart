import 'package:flutter/material.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/pages/custom_page.dart';

class DictionaryModel extends CustomPageModel {
  DictionaryModel({
    super.icon = Icons.book,
    super.label = "Dictionary",
    super.welcomeText =
        "No expressions are shown. Please search for an expression.",
  });

  @override
  Widget itemBuilder(BuildContext context, int index, int selectedDictIndex) {
    return Globals.dicts[selectedDictIndex]
        .expEntryItemBuilder(context, items[index]);
  }
}

class Dictionary extends CustomPage {
  Dictionary({Key? key}) : super(key: key, model: DictionaryModel());

  @override
  void onFabPressed(BuildContext context) {
    // TODO: implement onFabPressed
  }

  @override
  void onSearchTextChanged(int selectedDictIndex, String s) {
    // TODO: implement onSearchTextChanged
  }

  @override
  void onSearchTextSubmitted(int selectedDictIndex, String s) async {
    model.items = await Globals.dicts[selectedDictIndex].loadExpsFromDb(s);
  }
}
