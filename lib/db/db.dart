import 'package:isar/isar.dart';
import 'package:jgraph/pages/dictionary/jp/exp_entry.dart';

class Db {
  ///private constructor
  Db._();
  static Isar? _instance;
  static Isar get instance => _instance!;
  static final List<CollectionSchema> _schemas = [
    JPExpEntrySchema,
  ];
  static Future<void> open() async {
    if (_instance == null) {
      if (Isar.instanceNames.isEmpty) {
        _instance = await Isar.open(_schemas, inspector: true);
      }
      _instance = Isar.getInstance();
    }
  }

  static Future<bool> isEmpty<T>() async {
    return (await instance.collection<T>().count()) == 0;
  }

  static Future<void> putAll<T>(List<T> objects) async {
    await Db.instance.writeTxn(() async {
      await Db.instance.collection<T>().putAll(objects);
    });
  }
}
