import 'package:flutter/material.dart';
import 'package:opendict/pages/custom_page.dart';

class VocabularyModel extends CustomPageModel {
  VocabularyModel({
    super.icon = Icons.star,
    super.label = "Vocabulary",
    super.welcomeText =
        "Empty vocabulary. You can add expressions by marking them.",
  });

  @override
  Widget itemBuilder(BuildContext context, int index, int selectedDictIndex) {
    // TODO: implement itemBuilder
    throw UnimplementedError();
  }
}

class Vocabulary extends CustomPage {
  Vocabulary({Key? key}) : super(key: key, model: VocabularyModel());

  @override
  void onFabPressed(BuildContext context) {
    // TODO: implement onFabPressed
  }

  @override
  void onSearchTextChanged(int selectedDictIndex, String s) {
    // TODO: implement onSearchTextChanged
  }

  @override
  void onSearchTextSubmitted(int selectedDictIndex, String s) {
    // TODO: implement onEditingComplete
  }
}
