import 'package:flutter/material.dart';
import 'package:jgraph/api/entry.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/main.dart';
import 'package:jgraph/widgets/custom_text.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

abstract class CustomPageModel extends ChangeNotifier {
  CustomPageModel({
    this.icon = Icons.question_mark_rounded,
    this.label = "Custom page",
    this.welcomeText = "Welcome",
    this.emptyText = "No results found",
  });
  final GlobalKey<FormState> searchFormKey = GlobalKey<FormState>();

  final IconData icon;
  final String label, welcomeText, emptyText;
  bool searchDone = false;
  void didSearch() {
    searchDone = true;
    notifyListeners();
  }

  List<ExpEntry> items_ = [];
  List<ExpEntry> get items => items_;
  set items(List<ExpEntry> newValue) {
    items_ = newValue;
    notifyListeners();
  }

  bool _searchVisible = false;
  bool get searchVisible => _searchVisible;
  set searchVisible(bool newValue) {
    _searchVisible = newValue;
    notifyListeners();
  }

  void toggleVisibility() {
    _searchVisible = !_searchVisible;
    notifyListeners();
  }

  Widget itemBuilder(int index, int selectedDictIndex);
}

abstract class CustomPage {
  CustomPage({Key? key, required this.model});
  final CustomPageModel model;

  Widget? drawerBuilder(BuildContext context) => Drawer(
        child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "Dictionaries",
              style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
            ),
          ),
          ...Globals.dicts.asMap().keys.map((i) => ListTile(
                title: Text(Globals.dicts[i].title!),
                onTap: () async {
                  context.read<MyHomePageModel>().setSelectedDictIndexAsync(i);
                  Navigator.pop(context);
                },
              ))
        ]),
      );
  Widget? appBarBuilder(BuildContext context) => AppBar(
        title: Text(context.read<CustomPageModel>().label),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CustomPageModel>().toggleVisibility();
            },
            icon: const Icon(Icons.search),
          )
        ],
      );

  Widget bodyBuilderRaw(
      BuildContext context, Tuple3 tuple, int selectedDictIndex) {
    return Column(children: [
      Visibility(
        visible: tuple.item2,
        child: CustomTextWithProvider(
          labelText: "Search",
          hintText: "Search for an expression",
          onChanged: (String s) => onSearchTextChanged(selectedDictIndex, s),
          onEditingComplete: (String s) {
            if (s.isEmpty) {
            } else {
              context.read<CustomPageModel>().didSearch();
              onSearchTextEditingComplete(selectedDictIndex, s);
            }
          },
        ),
      ),
      Expanded(
        child: ((tuple.item1.isEmpty)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      context.read<CustomPageModel>().icon,
                      size: 65,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        (tuple.item3)
                            ? context.read<CustomPageModel>().emptyText
                            : context.read<CustomPageModel>().welcomeText,
                        style: const TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                ),
              )
            : ListView.builder(
                itemCount: tuple.item1.length,
                itemBuilder: (BuildContext context, int index) => context
                    .read<CustomPageModel>()
                    .itemBuilder(index, selectedDictIndex),
              )),
      )
    ]);
  }

  Widget? bodyBuilder(BuildContext context) => ChangeNotifierProvider.value(
        value: model,
        child: Selector<MyHomePageModel, int>(
          selector: (_, myHomePageModel) => myHomePageModel.selectedDictIndex,
          builder: (context, selectedDictIndex, _) =>
              Selector<CustomPageModel, Tuple3<List<ExpEntry>, bool, bool>>(
            selector: (_, pageModel) => Tuple3(
                pageModel.items, pageModel.searchVisible, pageModel.searchDone),
            builder: (context, tuple, __) {
              return bodyBuilderRaw(context, tuple, selectedDictIndex);
            },
          ),
        ),
      );
  Widget? fabBuilder(BuildContext context) => FloatingActionButton(
        tooltip: "Add vocabulary entry",
        onPressed: () => onFabPressed(context),
        child: const Icon(Icons.add),
      );

  void onFabPressed(BuildContext context);
  void onSearchTextChanged(int selectedDictIndex, String s);
  void onSearchTextEditingComplete(int selectedDictIndex, String s);
}
