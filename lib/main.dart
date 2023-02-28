import 'package:jgraph/db/db.dart';
import 'package:jgraph/globals.dart';
import 'package:jgraph/pages/custom_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Db.open();
  await Globals.dicts[0].loadExps();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GlobalModel>(
      create: (BuildContext context) => GlobalModel(),
      builder: (context, _) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: ChangeNotifierProvider<MyHomePageModel>(
          create: (context) => MyHomePageModel(),
          child: const MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePageModel extends ChangeNotifier {
  int _selectedDictIndex = 0;
  int get selectedDictIndex => _selectedDictIndex;
  set selectedDictIndex(int newIndex) {
    _selectedDictIndex = newIndex;
    notifyListeners();
  }

  void setSelectedDictIndexAsync(int newIndex) async {
    _selectedDictIndex = newIndex;
    await Globals.dicts[_selectedDictIndex].loadExps();
    notifyListeners();
  }

  int _selectedNavBarIndex = 0;
  int get selectedNavBarIndex => _selectedNavBarIndex;
  set selectedNavBarIndex(int newIndex) {
    _selectedNavBarIndex = newIndex;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<MyHomePageModel, int>(
      selector: (_, myHomePageModel) => myHomePageModel.selectedNavBarIndex,
      builder: (context, selectedNavBarIndex, __) {
        CustomPage page = Globals.pages[selectedNavBarIndex];
        return ChangeNotifierProvider.value(
          value: page.model,
          builder: (context, _) => Scaffold(
            resizeToAvoidBottomInset: false,
            drawer: page.drawerBuilder(context),
            appBar: page.appBarBuilder(context) as PreferredSizeWidget,
            body: page.bodyBuilder(context),
            floatingActionButton: page.fabBuilder(context),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: Globals.pages
                  .map((page) => BottomNavigationBarItem(
                        icon: Icon(page.model.icon),
                        label: page.model.label,
                      ))
                  .toList(),
              currentIndex: selectedNavBarIndex,
              onTap: (int newValue) => context
                  .read<MyHomePageModel>()
                  .selectedNavBarIndex = newValue,
            ),
          ),
        );
      },
    );
  }
}
