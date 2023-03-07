import 'package:flutter/material.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/main.dart';
import 'package:jgraph/pages/custom_page.dart';
import 'package:jgraph/api/exp_entry.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class LangCharsModel extends CustomPageModel {
  LangCharsModel(
      {super.icon = Icons.abc,
      super.label = "Characters",
      super.welcomeText =
          "No characters are shown. Please search for a character."});

  @override
  Widget itemBuilder(BuildContext context, int index, int selectedDictIndex) {
    return Globals.dicts[selectedDictIndex]
        .charEntryItemBuilder(context, items[index]);
  }
}

class LangChars extends CustomPage {
  LangChars({Key? key}) : super(key: key, model: LangCharsModel());

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
    model.items = await Globals.dicts[selectedDictIndex].loadCharsFromDb(s);
  }

  @override
  Widget? bodyBuilder(BuildContext context) => ChangeNotifierProvider.value(
        value: model,
        child: Selector<MyHomePageModel, int>(
          selector: (_, myHomePageModel) => myHomePageModel.selectedDictIndex,
          builder: (context, selectedDictIndex, _) =>
              Selector<CustomPageModel, Tuple2<List, bool>>(
            selector: (_, pageModel) =>
                Tuple2(pageModel.items, pageModel.searchDone),
            builder: (context, tuple, __) {
              return (Globals.dicts[selectedDictIndex].hasChars)
                  ? bodyBuilderRaw(context, tuple, selectedDictIndex)
                  : Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          context.read<CustomPageModel>().icon,
                          size: 65,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Text(
                            "The dictionary does not have any characters, no characters found",
                            style: TextStyle(fontSize: 25),
                          ),
                        )
                      ],
                    ));
            },
          ),
        ),
      );
}
