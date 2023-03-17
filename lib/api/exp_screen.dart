import 'package:flutter/material.dart';
import 'package:opendict/api/exp_entry.dart';
import 'package:opendict/api/lang.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class ExpScreenModel extends ChangeNotifier {
  bool relatedExpressionsRevealed = false;
  void toggleRelatedExpressions() {
    relatedExpressionsRevealed = !relatedExpressionsRevealed;
    notifyListeners();
  }
}

abstract class ExpScreen<ExpReading, ExpMeaning> extends StatelessWidget {
  const ExpScreen(this.lang, this.expEntryItem, this.readingsAndMeanings,
      {super.key});
  final ExpEntry expEntryItem;
  final Lang lang;
  final Tuple2<List<ExpReading>, List<ExpMeaning>> readingsAndMeanings;

  Widget readingItemBuilder(BuildContext context, ExpReading expReading);
  Widget meaningItemBuilder(BuildContext context, ExpMeaning expMeaning);
  Widget? appBarBuilder(
      BuildContext context, List listOfReadings, List listOfSenses);
  Future<Widget> charListBuilder(BuildContext context) =>
      Future.value(const SizedBox.shrink());
  Future<Widget> expListBuilder(BuildContext context) =>
      Future.value(const SizedBox.shrink());
  @override
  Widget build(BuildContext context) {
    List<ExpReading> listOfReadings = readingsAndMeanings.item1;
    List<ExpMeaning> listOfSenses = readingsAndMeanings.item2;
    return Scaffold(
      appBar: appBarBuilder(context, listOfReadings, listOfSenses)
          as PreferredSizeWidget,
      body: ChangeNotifierProvider(
        create: (BuildContext context) => ExpScreenModel(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Selector<ExpScreenModel, bool>(
              selector: (context, expScreenModel) =>
                  expScreenModel.relatedExpressionsRevealed,
              builder: (context, relatedExpressionsRevealed, __) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  ...((lang.hasChars)
                      ? [
                          FutureBuilder(
                            future: charListBuilder(context),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return snapshot.data!;
                              }
                              if (snapshot.hasError) {
                                return const Expanded(
                                    child: Text(
                                  "Error: Could not acquire the characters for this language",
                                  style: TextStyle(fontSize: 20),
                                ));
                              }
                              return const CircularProgressIndicator();
                            },
                          ),
                        ]
                      : []),
                  (relatedExpressionsRevealed
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
                              .read<ExpScreenModel>()
                              .toggleRelatedExpressions,
                        )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
