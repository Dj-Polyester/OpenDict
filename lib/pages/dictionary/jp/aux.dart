class JPAux {
  static const Map<String, String> dialMap = {
    "bra": "Brazilian",
    "hob": "Hokkaido-ben",
    "ksb": "Kansai-ben",
    "ktb": "Kantou-ben",
    "kyb": "Kyoto-ben",
    "kyu": "Kyuushuu-ben",
    "nab": "Nagano-ben",
    "osb": "Osaka-ben",
    "rkb": "Ryuukyuu-ben",
    "thb": "Touhoku-ben",
    "tsb": "Tosa-ben",
    "tsug": "Tsugaru-ben",
  };
  static const Map<String, String> fieldMap = {
    "agric": "agriculture",
    "anat": "anatomy",
    "archeol": "archeology",
    "archit": "architecture",
    "art": "art, aesthetics",
    "astron": "astronomy",
    "audvid": "audiovisual",
    "aviat": "aviation",
    "baseb": "baseball",
    "biochem": "biochemistry",
    "biol": "biology",
    "bot": "botany",
    "Buddh": "Buddhism",
    "bus": "business",
    "cards": "card games",
    "chem": "chemistry",
    "Christn": "Christianity",
    "cloth": "clothing",
    "comp": "computing",
    "cryst": "crystallography",
    "dent": "dentistry",
    "ecol": "ecology",
    "econ": "economics",
    "elec": "electricity, elec. eng.",
    "electr": "electronics",
    "embryo": "embryology",
    "engr": "engineering",
    "ent": "entomology",
    "film": "film",
    "finc": "finance",
    "fish": "fishing",
    "food": "food, cooking",
    "gardn": "gardening, horticulture",
    "genet": "genetics",
    "geogr": "geography",
    "geol": "geology",
    "geom": "geometry",
    "go": "go (game)",
    "golf": "golf",
    "gramm": "grammar",
    "grmyth": "Greek mythology",
    "hanaf": "hanafuda",
    "horse": "horse racing",
    "kabuki": "kabuki",
    "law": "law",
    "ling": "linguistics",
    "logic": "logic",
    "MA": "martial arts",
    "mahj": "mahjong",
    "manga": "manga",
    "math": "mathematics",
    "mech": "mechanical engineering",
    "med": "medicine",
    "met": "meteorology",
    "mil": "military",
    "mining": "mining",
    "music": "music",
    "noh": "noh",
    "ornith": "ornithology",
    "paleo": "paleontology",
    "pathol": "pathology",
    "pharm": "pharmacology",
    "phil": "philosophy",
    "photo": "photography",
    "physics": "physics",
    "physiol": "physiology",
    "politics": "politics",
    "print": "printing",
    "psy": "psychiatry",
    "psyanal": "psychoanalysis",
    "psych": "psychology",
    "rail": "railway",
    "rommyth": "Roman mythology",
    "Shinto": "Shinto",
    "shogi": "shogi",
    "ski": "skiing",
    "sports": "sports",
    "stat": "statistics",
    "stockm": "stock market",
    "sumo": "sumo",
    "telec": "telecommunications",
    "tradem": "trademark",
    "tv": "television",
    "vidg": "video games",
    "zool": "zoology",
  };
  static const Map<String, String> keInfMap = {
    "ateji": "ateji (phonetic) reading",
    "ik": "word containing irregular kana usage",
    "iK": "word containing irregular kanji usage",
    "io": "irregular okurigana usage",
    "oK": "word containing out-dated kanji or kanji usage",
    "rK": "rarely-used kanji form",
    "sK": "search-only kanji form",
  };
  static const Map<String, String> miscMap = {
    "abbr": "abbreviation",
    "arch": "archaic",
    "char": "character",
    "chn": "children's language",
    "col": "colloquial",
    "company": "company name",
    "creat": "creature",
    "dated": "dated term",
    "dei": "deity",
    "derog": "derogatory",
    "doc": "document",
    "euph": "euphemistic",
    "ev": "event",
    "fam": "familiar language",
    "fem": "female term or language",
    "fict": "fiction",
    "form": "formal or literary term",
    "given": "given name or forename, gender not specified",
    "group": "group",
    "hist": "historical term",
    "hon": "honorific or respectful (sonkeigo) language",
    "hum": "humble (kenjougo) language",
    "id": "idiomatic expression",
    "joc": "jocular, humorous term",
    "leg": "legend",
    "m-sl": "manga slang",
    "male": "male term or language",
    "myth": "mythology",
    "net-sl": "Internet slang",
    "obj": "object",
    "obs": "obsolete term",
    "on-mim": "onomatopoeic or mimetic word",
    "organization": "organization name",
    "oth": "other",
    "person": "full name of a particular person",
    "place": "place name",
    "poet": "poetical term",
    "pol": "polite (teineigo) language",
    "product": "product name",
    "proverb": "proverb",
    "quote": "quotation",
    "rare": "rare term",
    "relig": "religion",
    "sens": "sensitive",
    "serv": "service",
    "ship": "ship name",
    "sl": "slang",
    "station": "railway station",
    "surname": "family or surname",
    "uk": "usually written using kana alone",
    "unclass": "unclassified name",
    "vulg": "vulgar expression or word",
    "work": "work of art, literature, music, etc. name",
    "X": "rude or X-rated term (not displayed in educational software)",
    "yoji": "yojijukugo",
  };
  static const Map<String, String> posMap = {
    "adj-f": "noun or verb acting prenominally",
    "adj-i": "adjective (keiyoushi)",
    "adj-ix": "adjective (keiyoushi) - yoi/ii class",
    "adj-kari": "'kari' adjective (archaic)",
    "adj-ku": "'ku' adjective (archaic)",
    "adj-na": "adjectival nouns or quasi-adjectives (keiyodoshi)",
    "adj-nari": "archaic/formal form of na-adjective",
    "adj-no": "nouns which may take the genitive case particle 'no'",
    "adj-pn": "pre-noun adjectival (rentaishi)",
    "adj-shiku": "'shiku' adjective (archaic)",
    "adj-t": "'taru' adjective",
    "adv": "adverb (fukushi)",
    "adv-to": "adverb taking the 'to' particle",
    "aux": "auxiliary",
    "aux-adj": "auxiliary adjective",
    "aux-v": "auxiliary verb",
    "conj": "conjunction",
    "cop": "copula",
    "ctr": "counter",
    "exp": "expressions (phrases, clauses, etc.)",
    "int": "interjection (kandoushi)",
    "n": "noun (common) (futsuumeishi)",
    "n-adv": "adverbial noun (fukushitekimeishi)",
    "n-pr": "proper noun",
    "n-pref": "noun, used as a prefix",
    "n-suf": "noun, used as a suffix",
    "n-t": "noun (temporal) (jisoumeishi)",
    "num": "numeric",
    "pn": "pronoun",
    "pref": "prefix",
    "prt": "particle",
    "suf": "suffix",
    "unc": "unclassified",
    "v-unspec": "verb unspecified",
    "v1": "Ichidan verb",
    "v1-s": "Ichidan verb - kureru special class",
    "v2a-s": "Nidan verb with 'u' ending (archaic)",
    "v2b-k": "Nidan verb (upper class) with 'bu' ending (archaic)",
    "v2b-s": "Nidan verb (lower class) with 'bu' ending (archaic)",
    "v2d-k": "Nidan verb (upper class) with 'dzu' ending (archaic)",
    "v2d-s": "Nidan verb (lower class) with 'dzu' ending (archaic)",
    "v2g-k": "Nidan verb (upper class) with 'gu' ending (archaic)",
    "v2g-s": "Nidan verb (lower class) with 'gu' ending (archaic)",
    "v2h-k": "Nidan verb (upper class) with 'hu/fu' ending (archaic)",
    "v2h-s": "Nidan verb (lower class) with 'hu/fu' ending (archaic)",
    "v2k-k": "Nidan verb (upper class) with 'ku' ending (archaic)",
    "v2k-s": "Nidan verb (lower class) with 'ku' ending (archaic)",
    "v2m-k": "Nidan verb (upper class) with 'mu' ending (archaic)",
    "v2m-s": "Nidan verb (lower class) with 'mu' ending (archaic)",
    "v2n-s": "Nidan verb (lower class) with 'nu' ending (archaic)",
    "v2r-k": "Nidan verb (upper class) with 'ru' ending (archaic)",
    "v2r-s": "Nidan verb (lower class) with 'ru' ending (archaic)",
    "v2s-s": "Nidan verb (lower class) with 'su' ending (archaic)",
    "v2t-k": "Nidan verb (upper class) with 'tsu' ending (archaic)",
    "v2t-s": "Nidan verb (lower class) with 'tsu' ending (archaic)",
    "v2w-s":
        "Nidan verb (lower class) with 'u' ending and 'we' conjugation (archaic)",
    "v2y-k": "Nidan verb (upper class) with 'yu' ending (archaic)",
    "v2y-s": "Nidan verb (lower class) with 'yu' ending (archaic)",
    "v2z-s": "Nidan verb (lower class) with 'zu' ending (archaic)",
    "v4b": "Yodan verb with 'bu' ending (archaic)",
    "v4g": "Yodan verb with 'gu' ending (archaic)",
    "v4h": "Yodan verb with 'hu/fu' ending (archaic)",
    "v4k": "Yodan verb with 'ku' ending (archaic)",
    "v4m": "Yodan verb with 'mu' ending (archaic)",
    "v4n": "Yodan verb with 'nu' ending (archaic)",
    "v4r": "Yodan verb with 'ru' ending (archaic)",
    "v4s": "Yodan verb with 'su' ending (archaic)",
    "v4t": "Yodan verb with 'tsu' ending (archaic)",
    "v5aru": "Godan verb - -aru special class",
    "v5b": "Godan verb with 'bu' ending",
    "v5g": "Godan verb with 'gu' ending",
    "v5k": "Godan verb with 'ku' ending",
    "v5k-s": "Godan verb - Iku/Yuku special class",
    "v5m": "Godan verb with 'mu' ending",
    "v5n": "Godan verb with 'nu' ending",
    "v5r": "Godan verb with 'ru' ending",
    "v5r-i": "Godan verb with 'ru' ending (irregular verb)",
    "v5s": "Godan verb with 'su' ending",
    "v5t": "Godan verb with 'tsu' ending",
    "v5u": "Godan verb with 'u' ending",
    "v5u-s": "Godan verb with 'u' ending (special class)",
    "v5uru": "Godan verb - Uru old class verb (old form of Eru)",
    "vi": "intransitive verb",
    "vk": "Kuru verb - special class",
    "vn": "irregular nu verb",
    "vr": "irregular ru verb, plain form ends with -ri",
    "vs": "noun or participle which takes the aux. verb suru",
    "vs-c": "su verb - precursor to the modern suru",
    "vs-i": "suru verb - included",
    "vs-s": "suru verb - special class",
    "vt": "transitive verb",
    "vz": "Ichidan verb - zuru verb (alternative form of -jiru verbs)",
  };
  static const Map<String, String> reInfMap = {
    "gikun": "gikun (meaning as reading) or jukujikun (special kanji reading)",
    "ik": "word containing irregular kana usage",
    "ok": "out-dated or obsolete kana usage",
    "sk": "search-only kana form",
  };
  static const Map<String, String> gTypeMap = {
    "lit": "literal",
    "fig": "figurative",
    "expl": "explanation",
  };

  static const Map<String, String> kanjiGradeMap = {
    "1": "Jōyō kanji, taught in grade 1",
    "2": "Jōyō kanji, taught in grade 2",
    "3": "Jōyō kanji, taught in grade 3",
    "4": "Jōyō kanji, taught in grade 4",
    "5": "Jōyō kanji, taught in grade 5",
    "6": "Jōyō kanji, taught in grade 6",
    "8": "Jōyō kanji taught in Junior High",
    "9": "Jinmeiyō kanji, used in names",
    "10": "Jinmeiyō variant of a jōyō kanji, used in names",
  };
  static const Map<String, String> radTypeMap = {
    "classical": "KangXi",
    "nelson_c": '"classic" Nelson Kanji Dictionary',
  };
  static const String kanaString =
      "あいうえおかきくけこさしすせそたちつてとまみむめもなにぬねのはひふへほらりるれろやゆよわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽゃゅょっアイウエオカキクケコサシスセソタチツテトマミムメモナニヌネノハヒフヘホラリルレロヤユヨワヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポャュョッ";
  static const List<Map<String, String>> hiragana = [
    {"kana": "あ", "roumaji": "a", "type": "gojuuon"},
    {"kana": "い", "roumaji": "i", "type": "gojuuon"},
    {"kana": "う", "roumaji": "u", "type": "gojuuon"},
    {"kana": "え", "roumaji": "e", "type": "gojuuon"},
    {"kana": "お", "roumaji": "o", "type": "gojuuon"},
    {"kana": "か", "roumaji": "ka", "type": "gojuuon"},
    {"kana": "き", "roumaji": "ki", "type": "gojuuon"},
    {"kana": "く", "roumaji": "ku", "type": "gojuuon"},
    {"kana": "け", "roumaji": "ke", "type": "gojuuon"},
    {"kana": "こ", "roumaji": "ko", "type": "gojuuon"},
    {"kana": "さ", "roumaji": "sa", "type": "gojuuon"},
    {"kana": "し", "roumaji": "shi", "type": "gojuuon"},
    {"kana": "す", "roumaji": "su", "type": "gojuuon"},
    {"kana": "せ", "roumaji": "se", "type": "gojuuon"},
    {"kana": "そ", "roumaji": "so", "type": "gojuuon"},
    {"kana": "た", "roumaji": "ta", "type": "gojuuon"},
    {"kana": "ち", "roumaji": "chi", "type": "gojuuon"},
    {"kana": "つ", "roumaji": "tsu", "type": "gojuuon"},
    {"kana": "て", "roumaji": "te", "type": "gojuuon"},
    {"kana": "と", "roumaji": "to", "type": "gojuuon"},
    {"kana": "な", "roumaji": "na", "type": "gojuuon"},
    {"kana": "に", "roumaji": "ni", "type": "gojuuon"},
    {"kana": "ぬ", "roumaji": "nu", "type": "gojuuon"},
    {"kana": "ね", "roumaji": "ne", "type": "gojuuon"},
    {"kana": "の", "roumaji": "no", "type": "gojuuon"},
    {"kana": "は", "roumaji": "ha", "type": "gojuuon"},
    {"kana": "ひ", "roumaji": "hi", "type": "gojuuon"},
    {"kana": "ふ", "roumaji": "hu", "type": "gojuuon"},
    {"kana": "へ", "roumaji": "he", "type": "gojuuon"},
    {"kana": "ほ", "roumaji": "ho", "type": "gojuuon"},
    {"kana": "ま", "roumaji": "ma", "type": "gojuuon"},
    {"kana": "み", "roumaji": "mi", "type": "gojuuon"},
    {"kana": "む", "roumaji": "mu", "type": "gojuuon"},
    {"kana": "め", "roumaji": "me", "type": "gojuuon"},
    {"kana": "も", "roumaji": "mo", "type": "gojuuon"},
    {"kana": "や", "roumaji": "ya", "type": "gojuuon"},
    {"kana": "ゆ", "roumaji": "yu", "type": "gojuuon"},
    {"kana": "よ", "roumaji": "yo", "type": "gojuuon"},
    {"kana": "ら", "roumaji": "ra", "type": "gojuuon"},
    {"kana": "り", "roumaji": "ri", "type": "gojuuon"},
    {"kana": "る", "roumaji": "ru", "type": "gojuuon"},
    {"kana": "れ", "roumaji": "re", "type": "gojuuon"},
    {"kana": "ろ", "roumaji": "ro", "type": "gojuuon"},
    {"kana": "わ", "roumaji": "wa", "type": "gojuuon"},
    {"kana": "を", "roumaji": "wo", "type": "gojuuon"},
    {"kana": "ん", "roumaji": "n", "type": "gojuuon"},
    {"kana": "が", "roumaji": "ga", "type": "dakuon"},
    {"kana": "ぎ", "roumaji": "gi", "type": "dakuon"},
    {"kana": "ぐ", "roumaji": "gu", "type": "dakuon"},
    {"kana": "げ", "roumaji": "ge", "type": "dakuon"},
    {"kana": "ご", "roumaji": "go", "type": "dakuon"},
    {"kana": "ざ", "roumaji": "za", "type": "dakuon"},
    {"kana": "じ", "roumaji": "ji", "type": "dakuon"},
    {"kana": "ず", "roumaji": "zu", "type": "dakuon"},
    {"kana": "ぜ", "roumaji": "ze", "type": "dakuon"},
    {"kana": "ぞ", "roumaji": "zo", "type": "dakuon"},
    {"kana": "だ", "roumaji": "da", "type": "dakuon"},
    {"kana": "ぢ", "roumaji": "ji", "type": "dakuon"},
    {"kana": "づ", "roumaji": "zu", "type": "dakuon"},
    {"kana": "で", "roumaji": "de", "type": "dakuon"},
    {"kana": "ど", "roumaji": "do", "type": "dakuon"},
    {"kana": "ば", "roumaji": "ba", "type": "dakuon"},
    {"kana": "び", "roumaji": "bi", "type": "dakuon"},
    {"kana": "ぶ", "roumaji": "bu", "type": "dakuon"},
    {"kana": "べ", "roumaji": "be", "type": "dakuon"},
    {"kana": "ぼ", "roumaji": "bo", "type": "dakuon"},
    {"kana": "ぱ", "roumaji": "pa", "type": "handakuon"},
    {"kana": "ぴ", "roumaji": "pi", "type": "handakuon"},
    {"kana": "ぷ", "roumaji": "pu", "type": "handakuon"},
    {"kana": "ぺ", "roumaji": "pe", "type": "handakuon"},
    {"kana": "ぽ", "roumaji": "po", "type": "handakuon"},
    {"kana": "っ", "roumaji": "(pause)", "type": "sokuon"},
    {"kana": "きゃ", "roumaji": "kya", "type": "youon"},
    {"kana": "きゅ", "roumaji": "kyu", "type": "youon"},
    {"kana": "きょ", "roumaji": "kyo", "type": "youon"},
    {"kana": "しゃ", "roumaji": "sha", "type": "youon"},
    {"kana": "しゅ", "roumaji": "shu", "type": "youon"},
    {"kana": "しょ", "roumaji": "sho", "type": "youon"},
    {"kana": "ちゃ", "roumaji": "cha", "type": "youon"},
    {"kana": "ちゅ", "roumaji": "chu", "type": "youon"},
    {"kana": "ちょ", "roumaji": "cho", "type": "youon"},
    {"kana": "にゃ", "roumaji": "nya", "type": "youon"},
    {"kana": "にゅ", "roumaji": "nyu", "type": "youon"},
    {"kana": "にょ", "roumaji": "nyo", "type": "youon"},
    {"kana": "ひゃ", "roumaji": "hya", "type": "youon"},
    {"kana": "ひゅ", "roumaji": "hyu", "type": "youon"},
    {"kana": "ひょ", "roumaji": "hyo", "type": "youon"},
    {"kana": "みゃ", "roumaji": "mya", "type": "youon"},
    {"kana": "みゅ", "roumaji": "myu", "type": "youon"},
    {"kana": "みょ", "roumaji": "myo", "type": "youon"},
    {"kana": "りゃ", "roumaji": "rya", "type": "youon"},
    {"kana": "りゅ", "roumaji": "ryu", "type": "youon"},
    {"kana": "りょ", "roumaji": "ryo", "type": "youon"},
    {"kana": "ぎゃ", "roumaji": "gya", "type": "youon"},
    {"kana": "ぎゅ", "roumaji": "gyu", "type": "youon"},
    {"kana": "ぎょ", "roumaji": "gyo", "type": "youon"},
    {"kana": "じゃ", "roumaji": "ja", "type": "youon"},
    {"kana": "じゅ", "roumaji": "ju", "type": "youon"},
    {"kana": "じょ", "roumaji": "jo", "type": "youon"},
    {"kana": "びゃ", "roumaji": "bya", "type": "youon"},
    {"kana": "びゅ", "roumaji": "byu", "type": "youon"},
    {"kana": "びょ", "roumaji": "byo", "type": "youon"},
    {"kana": "ぴゃ", "roumaji": "pya", "type": "youon"},
    {"kana": "ぴゅ", "roumaji": "pyu", "type": "youon"},
    {"kana": "ぴょ", "roumaji": "pyo", "type": "youon"}
  ];
  static const List<Map<String, String>> katakana = [
    {"kana": "ア", "roumaji": "a", "type": "gojuuon"},
    {"kana": "イ", "roumaji": "i", "type": "gojuuon"},
    {"kana": "ウ", "roumaji": "u", "type": "gojuuon"},
    {"kana": "エ", "roumaji": "e", "type": "gojuuon"},
    {"kana": "オ", "roumaji": "o", "type": "gojuuon"},
    {"kana": "カ", "roumaji": "ka", "type": "gojuuon"},
    {"kana": "キ", "roumaji": "ki", "type": "gojuuon"},
    {"kana": "ク", "roumaji": "ku", "type": "gojuuon"},
    {"kana": "ケ", "roumaji": "ke", "type": "gojuuon"},
    {"kana": "コ", "roumaji": "ko", "type": "gojuuon"},
    {"kana": "サ", "roumaji": "sa", "type": "gojuuon"},
    {"kana": "シ", "roumaji": "shi", "type": "gojuuon"},
    {"kana": "ス", "roumaji": "su", "type": "gojuuon"},
    {"kana": "セ", "roumaji": "se", "type": "gojuuon"},
    {"kana": "ソ", "roumaji": "so", "type": "gojuuon"},
    {"kana": "タ", "roumaji": "ta", "type": "gojuuon"},
    {"kana": "チ", "roumaji": "chi", "type": "gojuuon"},
    {"kana": "ツ", "roumaji": "tsu", "type": "gojuuon"},
    {"kana": "テ", "roumaji": "te", "type": "gojuuon"},
    {"kana": "ト", "roumaji": "to", "type": "gojuuon"},
    {"kana": "ナ", "roumaji": "na", "type": "gojuuon"},
    {"kana": "ニ", "roumaji": "ni", "type": "gojuuon"},
    {"kana": "ヌ", "roumaji": "nu", "type": "gojuuon"},
    {"kana": "ネ", "roumaji": "ne", "type": "gojuuon"},
    {"kana": "ノ", "roumaji": "no", "type": "gojuuon"},
    {"kana": "ハ", "roumaji": "ha", "type": "gojuuon"},
    {"kana": "ヒ", "roumaji": "hi", "type": "gojuuon"},
    {"kana": "フ", "roumaji": "hu", "type": "gojuuon"},
    {"kana": "ヘ", "roumaji": "he", "type": "gojuuon"},
    {"kana": "ホ", "roumaji": "ho", "type": "gojuuon"},
    {"kana": "マ", "roumaji": "ma", "type": "gojuuon"},
    {"kana": "ミ", "roumaji": "mi", "type": "gojuuon"},
    {"kana": "ム", "roumaji": "mu", "type": "gojuuon"},
    {"kana": "メ", "roumaji": "me", "type": "gojuuon"},
    {"kana": "モ", "roumaji": "mo", "type": "gojuuon"},
    {"kana": "ヤ", "roumaji": "ya", "type": "gojuuon"},
    {"kana": "ユ", "roumaji": "yu", "type": "gojuuon"},
    {"kana": "ヨ", "roumaji": "yo", "type": "gojuuon"},
    {"kana": "ラ", "roumaji": "ra", "type": "gojuuon"},
    {"kana": "リ", "roumaji": "ri", "type": "gojuuon"},
    {"kana": "ル", "roumaji": "ru", "type": "gojuuon"},
    {"kana": "レ", "roumaji": "re", "type": "gojuuon"},
    {"kana": "ロ", "roumaji": "ro", "type": "gojuuon"},
    {"kana": "ワ", "roumaji": "wa", "type": "gojuuon"},
    {"kana": "ヲ", "roumaji": "wo", "type": "gojuuon"},
    {"kana": "ン", "roumaji": "n", "type": "gojuuon"},
    {"kana": "ガ", "roumaji": "ga", "type": "dakuon"},
    {"kana": "ギ", "roumaji": "gi", "type": "dakuon"},
    {"kana": "グ", "roumaji": "gu", "type": "dakuon"},
    {"kana": "ゲ", "roumaji": "ge", "type": "dakuon"},
    {"kana": "ゴ", "roumaji": "go", "type": "dakuon"},
    {"kana": "ザ", "roumaji": "za", "type": "dakuon"},
    {"kana": "ジ", "roumaji": "ji", "type": "dakuon"},
    {"kana": "ズ", "roumaji": "zu", "type": "dakuon"},
    {"kana": "ゼ", "roumaji": "ze", "type": "dakuon"},
    {"kana": "ゾ", "roumaji": "zo", "type": "dakuon"},
    {"kana": "ダ", "roumaji": "da", "type": "dakuon"},
    {"kana": "ヂ", "roumaji": "ji", "type": "dakuon"},
    {"kana": "ヅ", "roumaji": "zu", "type": "dakuon"},
    {"kana": "デ", "roumaji": "de", "type": "dakuon"},
    {"kana": "ド", "roumaji": "do", "type": "dakuon"},
    {"kana": "バ", "roumaji": "ba", "type": "dakuon"},
    {"kana": "ビ", "roumaji": "bi", "type": "dakuon"},
    {"kana": "ブ", "roumaji": "bu", "type": "dakuon"},
    {"kana": "ベ", "roumaji": "be", "type": "dakuon"},
    {"kana": "ボ", "roumaji": "bo", "type": "dakuon"},
    {"kana": "パ", "roumaji": "pa", "type": "handakuon"},
    {"kana": "ピ", "roumaji": "pi", "type": "handakuon"},
    {"kana": "プ", "roumaji": "pu", "type": "handakuon"},
    {"kana": "ペ", "roumaji": "pe", "type": "handakuon"},
    {"kana": "ポ", "roumaji": "po", "type": "handakuon"},
    {"kana": "ッ", "roumaji": "(pause)", "type": "sokuon"},
    {"kana": "キャ", "roumaji": "kya", "type": "youon"},
    {"kana": "キュ", "roumaji": "kyu", "type": "youon"},
    {"kana": "キョ", "roumaji": "kyo", "type": "youon"},
    {"kana": "シャ", "roumaji": "sha", "type": "youon"},
    {"kana": "シュ", "roumaji": "shu", "type": "youon"},
    {"kana": "ショ", "roumaji": "sho", "type": "youon"},
    {"kana": "チャ", "roumaji": "cha", "type": "youon"},
    {"kana": "チュ", "roumaji": "chu", "type": "youon"},
    {"kana": "チョ", "roumaji": "cho", "type": "youon"},
    {"kana": "ニャ", "roumaji": "nya", "type": "youon"},
    {"kana": "ニュ", "roumaji": "nyu", "type": "youon"},
    {"kana": "ニョ", "roumaji": "nyo", "type": "youon"},
    {"kana": "ヒャ", "roumaji": "hya", "type": "youon"},
    {"kana": "ヒュ", "roumaji": "hyu", "type": "youon"},
    {"kana": "ヒョ", "roumaji": "hyo", "type": "youon"},
    {"kana": "ミャ", "roumaji": "mya", "type": "youon"},
    {"kana": "ミュ", "roumaji": "myu", "type": "youon"},
    {"kana": "ミョ", "roumaji": "myo", "type": "youon"},
    {"kana": "リャ", "roumaji": "rya", "type": "youon"},
    {"kana": "リュ", "roumaji": "ryu", "type": "youon"},
    {"kana": "リョ", "roumaji": "ryo", "type": "youon"},
    {"kana": "ギャ", "roumaji": "gya", "type": "youon"},
    {"kana": "ギュ", "roumaji": "gyu", "type": "youon"},
    {"kana": "ギョ", "roumaji": "gyo", "type": "youon"},
    {"kana": "ジャ", "roumaji": "ja", "type": "youon"},
    {"kana": "ジュ", "roumaji": "ju", "type": "youon"},
    {"kana": "ジョ", "roumaji": "jo", "type": "youon"},
    {"kana": "ビャ", "roumaji": "bya", "type": "youon"},
    {"kana": "ビュ", "roumaji": "byu", "type": "youon"},
    {"kana": "ビョ", "roumaji": "byo", "type": "youon"},
    {"kana": "ピャ", "roumaji": "pya", "type": "youon"},
    {"kana": "ピュ", "roumaji": "pyu", "type": "youon"},
    {"kana": "ピョ", "roumaji": "pyo", "type": "youon"}
  ];
}
