import 'package:isar/isar.dart';

abstract class ExpEntry {
  const ExpEntry({required this.id});
  final Id id;
}

abstract class CharEntry {
  const CharEntry({required this.literal});
  final String literal;

  final Id id = Isar.autoIncrement;
  // Id get id => fastHash(literal);
  // int fastHash(String string) {
  //   var hash = 0xcbf29ce484222325;

  //   var i = 0;
  //   while (i < string.length) {
  //     final codeUnit = string.codeUnitAt(i++);
  //     hash ^= codeUnit >> 8;
  //     hash *= 0x100000001b3;
  //     hash ^= codeUnit & 0xFF;
  //     hash *= 0x100000001b3;
  //   }
  //   return hash;
  // }
}
