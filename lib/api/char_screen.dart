import 'package:flutter/material.dart';
import 'package:opendict/api/char_entry.dart';
import 'package:opendict/api/lang.dart';
import 'package:opendict/pages/dictionary/jp/char_screen.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class CharScreenModelOtherInfo {}

class CharScreenModel extends ChangeNotifier {
  bool relatedExpressionsRevealed = false;
  void toggleRelatedExpressions() {
    relatedExpressionsRevealed = !relatedExpressionsRevealed;
    notifyListeners();
  }

  Map<String, bool> otherInfo = {};
  void toggleOtherInfo(String key) {
    if (otherInfo.containsKey(key)) {
      otherInfo[key] = !otherInfo[key]!;
    } else {
      otherInfo[key] = true;
    }
    notifyListeners();
  }
}

abstract class CharScreen<CharReading, CharMeaning> extends StatelessWidget {
  const CharScreen(this.lang, this.charEntryItem, this.readingsAndMeanings,
      {super.key});

  final CharEntry charEntryItem;
  final Tuple2<List<CharReading>, List<CharMeaning>> readingsAndMeanings;
  final Lang lang;

  Widget? appBarBuilder(BuildContext context);
  Widget readingItemBuilder(BuildContext context, CharReading charReading);
  Widget meaningItemBuilder(BuildContext context, CharMeaning charMeaning);
  Widget charInfoBuilder(BuildContext context) => const SizedBox.shrink();
  List<Widget> charOtherInfoBuilder(
          BuildContext context, Map<String, bool> otherInfo) =>
      [];
  Future<Widget> expListBuilder(BuildContext context) =>
      Future.value(const SizedBox.shrink());

  @override
  Widget build(BuildContext context) {
    List<CharReading> listOfReadings = readingsAndMeanings.item1;
    List<CharMeaning> listOfSenses = readingsAndMeanings.item2;

    return Scaffold(
      appBar: appBarBuilder(context) as PreferredSizeWidget,
      body: ChangeNotifierProvider(
          create: (context) => CharScreenModel(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Consumer<CharScreenModel>(
                builder: (context, charScreenModel, __) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      charEntryItem.literal,
                      style: const TextStyle(fontSize: 100),
                    ),
                    charInfoBuilder(context),
                    ...((listOfReadings.isEmpty)
                        ? []
                        : [
                            const ListTile(
                              title: Text(
                                "Readings",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            ...listOfReadings.map(
                              (e) => readingItemBuilder(context, e),
                            ),
                          ]),
                    ...((listOfSenses.isEmpty)
                        ? []
                        : [
                            const ListTile(
                              title: Text(
                                "Meanings",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            ...listOfSenses.map(
                              (e) => meaningItemBuilder(context, e),
                            ),
                          ]),
                    ...charOtherInfoBuilder(context, charScreenModel.otherInfo),
                    (charScreenModel.relatedExpressionsRevealed
                        ? FutureBuilder(
                            future: expListBuilder(context),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return snapshot.data!;
                              }
                              if (snapshot.hasError) {
                                return const Expanded(
                                    child: Text(
                                  "Error: Could not acquire the related expressions for this language",
                                  style: TextStyle(fontSize: 20),
                                ));
                              }
                              return const CircularProgressIndicator();
                            },
                          )
                        : ListTile(
                            title: const Text(
                              "Related expressions",
                              style: TextStyle(fontSize: 30),
                            ),
                            trailing: const Icon(Icons.arrow_drop_down),
                            onTap: context
                                .read<CharScreenModel>()
                                .toggleRelatedExpressions,
                          )),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
