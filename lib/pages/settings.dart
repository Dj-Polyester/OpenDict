import 'package:flutter/material.dart';
import 'package:opendict/pages/custom_page.dart';

class SettingsModel extends CustomPageModel {
  SettingsModel({
    super.icon = Icons.settings,
    super.label = "Settings",
    super.welcomeText = "No settings available",
  });

  @override
  Widget itemBuilder(BuildContext context, int index, int selectedDictIndex) {
    // TODO: implement itemBuilder
    throw UnimplementedError();
  }
}

class Settings extends CustomPage {
  Settings({Key? key}) : super(key: key, model: SettingsModel());

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

  @override
  Widget? fabBuilder(BuildContext context) => null;
}
