import 'package:flutter/material.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/main.dart';
import 'package:jgraph/pages/custom_page.dart';
import 'package:jgraph/api/entry.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class LangCharsModel extends CustomPageModel {
  LangCharsModel({
    super.icon = Icons.abc,
    super.label = "Characters",
    super.welcomeText =
        "No characters are shown. Please make a search using the search button on the top-right corner.",
  });

  @override
  Widget itemBuilder(int index, int selectedDictIndex) {
    return Globals.dicts[selectedDictIndex].charItemBuilder(items, index);
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
  void onSearchTextEditingComplete(int selectedDictIndex, String s) async {
    model.items = await Globals.dicts[selectedDictIndex].loadCharsFromDb(s)
        as List<ExpEntry>;
  }

  @override
  Widget? bodyBuilder(BuildContext context) => ChangeNotifierProvider.value(
        value: model,
        child: Selector<MyHomePageModel, int>(
          selector: (_, myHomePageModel) => myHomePageModel.selectedDictIndex,
          builder: (context, selectedDictIndex, _) =>
              Selector<CustomPageModel, Tuple3<List<ExpEntry>, bool, bool>>(
            selector: (_, pageModel) => Tuple3(
                pageModel.items, pageModel.searchVisible, pageModel.searchDone),
            builder: (context, tuple, __) {
              return (Globals.dicts[selectedDictIndex].isPictographic)
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
                            "The script of the selected language is not pictographic, no characters were found",
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
