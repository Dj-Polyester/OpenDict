import 'package:flutter/material.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/main.dart';
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

  List items_ = [];
  List get items => items_;
  set items(List newValue) {
    items_ = newValue;
    notifyListeners();
  }

  Widget itemBuilder(BuildContext context, int index, int selectedDictIndex);
}

abstract class CustomPage {
  CustomPage({Key? key, required this.model}) {
    _controller = TextEditingController();
  }
  final CustomPageModel model;
  late TextEditingController _controller;
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
      );

  Widget bodyBuilderRaw(
      BuildContext context, Tuple2 tuple, int selectedDictIndex) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          onSubmitted: (String s) {
            if (s.isEmpty) {
            } else {
              context.read<CustomPageModel>().didSearch();
              onSearchTextSubmitted(selectedDictIndex, s);
            }
          },
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelText: "Search",
              hintText: "Search for an expression",
              isCollapsed: false),
          controller: _controller,
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
                        (tuple.item2)
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
                    .itemBuilder(context, index, selectedDictIndex),
              )),
      )
    ]);
  }

  Widget? bodyBuilder(BuildContext context) => ChangeNotifierProvider.value(
        value: model,
        child: Selector<MyHomePageModel, int>(
          selector: (_, myHomePageModel) => myHomePageModel.selectedDictIndex,
          builder: (context, selectedDictIndex, _) =>
              Selector<CustomPageModel, Tuple2<List, bool>>(
            selector: (_, pageModel) =>
                Tuple2(pageModel.items, pageModel.searchDone),
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
  void onSearchTextSubmitted(int selectedDictIndex, String s);
}
