import 'package:flutter/material.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/pages/custom_page.dart';
import 'package:jgraph/api/entry.dart';

class DictionaryModel extends CustomPageModel {
  DictionaryModel({
    super.icon = Icons.book,
    super.label = "Dictionary",
    super.welcomeText =
        "No expressions are shown. Please make a search using the search button on the top-right corner.",
  });

  @override
  Widget itemBuilder(int index, int selectedDictIndex) {
    return Globals.dicts[selectedDictIndex].expItemBuilder(items, index);
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
  void onSearchTextEditingComplete(int selectedDictIndex, String s) async {
    model.items =
        await Globals.dicts[selectedDictIndex].loadExpsFromDb(s) as List<Entry>;
  }
}