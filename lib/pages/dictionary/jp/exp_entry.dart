import 'package:isar/isar.dart';
import 'package:jgraph/api/entry.dart';
import 'package:jgraph/pages/dictionary/jp/aux.dart';

part 'exp_entry.g.dart';

/// k_ele*, Kanji element
@embedded
class KEle {
  ///keb, defining element if exists
  late String keb;

  ///ke_inf*, ateji, okurigana irregularity etc
  List<String>? keInf;

  ///ke_pri*, true if ke_pri exists, false otherwise
  bool isCommon = false;
}

///r_ele*, Reading element
@embedded
class REle {
  ///reb, defining element when keb is not available
  late String reb;

  ///re_nokanji?, the reb cannot regarded as true meaning of its associated keb
  bool reNoKanji = false;

  ///re_restr*, the element(s) that this reading is restricted to
  List<String>? reRestr;

  ///re_inf*, ateji, okurigana irregularity etc
  List<String>? reInf;

  ///re_pri*, true if re_pri exists, false otherwise
  bool isCommon = true;
}

@embedded
class LSource {
  ///xml:lang, language
  String lang = "eng";

  ///false if ls_type attribute exists,
  bool lsTypeFull = true;

  ///true if ls_wasei attribute exists,
  bool waseiGo = false;

  ///text content
  String? text;
}

@embedded
class Gloss {
  ///xml:lang, language
  String lang = "eng";

  ///Gloss type, e.g. "lit" (literal), "fig" (figurative), "expl" (explanation).
  String? gType;

  ///text content
  String? text;
}

@embedded
class SenseEle {
  ///stagk*, denotes the keb for which this sense tag applies
  List<String>? stagk;

  ///stagr*, denotes the reb for which this sense tag applies
  List<String>? stagr;

  ///ant*, antonyms
  List<String>? ant;

  ///xref*, cross references, similar meanings
  List<String>? xref;

  ///pos*, part of speech info
  List<String>? pos;

  ///field*, field of application
  List<String>? field;

  ///misc*, miscellanous info
  List<String>? misc;

  ///lsource*, source language info
  List<LSource>? lsource;

  ///dial*, dialect
  List<String>? dial;

  ///gloss*, meaning(s)
  List<Gloss>? gloss;

  ///sInf*, supporting info
  List<String>? sInf;
}

@collection
class JPExpEntry extends JPAux implements Entry {
  const JPExpEntry({
    required this.id,
    this.kEles,
    this.rEles,
    this.senseEles,
  });

  @override
  final Id id; //ent_seq

  final List<KEle>? kEles; //k_ele*
  final List<REle>? rEles; //r_ele+
  final List<SenseEle>? senseEles; //sense+
}
