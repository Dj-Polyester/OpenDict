// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exp_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetJPExpEntryCollection on Isar {
  IsarCollection<JPExpEntry> get jPExpEntrys => this.collection();
}

const JPExpEntrySchema = CollectionSchema(
  name: r'JPExpEntry',
  id: -3385898056538837503,
  properties: {
    r'kEles': PropertySchema(
      id: 0,
      name: r'kEles',
      type: IsarType.objectList,
      target: r'KEle',
    ),
    r'rEles': PropertySchema(
      id: 1,
      name: r'rEles',
      type: IsarType.objectList,
      target: r'REle',
    ),
    r'senseEles': PropertySchema(
      id: 2,
      name: r'senseEles',
      type: IsarType.objectList,
      target: r'SenseEle',
    )
  },
  estimateSize: _jPExpEntryEstimateSize,
  serialize: _jPExpEntrySerialize,
  deserialize: _jPExpEntryDeserialize,
  deserializeProp: _jPExpEntryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'KEle': KEleSchema,
    r'REle': REleSchema,
    r'SenseEle': SenseEleSchema,
    r'LSource': LSourceSchema,
    r'Gloss': GlossSchema
  },
  getId: _jPExpEntryGetId,
  getLinks: _jPExpEntryGetLinks,
  attach: _jPExpEntryAttach,
  version: '3.0.5',
);

int _jPExpEntryEstimateSize(
  JPExpEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.kEles;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[KEle]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += KEleSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.rEles;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[REle]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += REleSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.senseEles;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[SenseEle]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += SenseEleSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _jPExpEntrySerialize(
  JPExpEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<KEle>(
    offsets[0],
    allOffsets,
    KEleSchema.serialize,
    object.kEles,
  );
  writer.writeObjectList<REle>(
    offsets[1],
    allOffsets,
    REleSchema.serialize,
    object.rEles,
  );
  writer.writeObjectList<SenseEle>(
    offsets[2],
    allOffsets,
    SenseEleSchema.serialize,
    object.senseEles,
  );
}

JPExpEntry _jPExpEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JPExpEntry(
    id: id,
    kEles: reader.readObjectList<KEle>(
      offsets[0],
      KEleSchema.deserialize,
      allOffsets,
      KEle(),
    ),
    rEles: reader.readObjectList<REle>(
      offsets[1],
      REleSchema.deserialize,
      allOffsets,
      REle(),
    ),
    senseEles: reader.readObjectList<SenseEle>(
      offsets[2],
      SenseEleSchema.deserialize,
      allOffsets,
      SenseEle(),
    ),
  );
  return object;
}

P _jPExpEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<KEle>(
        offset,
        KEleSchema.deserialize,
        allOffsets,
        KEle(),
      )) as P;
    case 1:
      return (reader.readObjectList<REle>(
        offset,
        REleSchema.deserialize,
        allOffsets,
        REle(),
      )) as P;
    case 2:
      return (reader.readObjectList<SenseEle>(
        offset,
        SenseEleSchema.deserialize,
        allOffsets,
        SenseEle(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jPExpEntryGetId(JPExpEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jPExpEntryGetLinks(JPExpEntry object) {
  return [];
}

void _jPExpEntryAttach(IsarCollection<dynamic> col, Id id, JPExpEntry object) {}

extension JPExpEntryQueryWhereSort
    on QueryBuilder<JPExpEntry, JPExpEntry, QWhere> {
  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JPExpEntryQueryWhere
    on QueryBuilder<JPExpEntry, JPExpEntry, QWhereClause> {
  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JPExpEntryQueryFilter
    on QueryBuilder<JPExpEntry, JPExpEntry, QFilterCondition> {
  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> kElesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> kElesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      kElesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> kElesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      kElesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      kElesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      kElesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      kElesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kEles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> rElesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> rElesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      rElesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> rElesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      rElesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      rElesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      rElesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      rElesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rEles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'senseEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'senseEles',
      ));
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition>
      senseElesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseEles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension JPExpEntryQueryObject
    on QueryBuilder<JPExpEntry, JPExpEntry, QFilterCondition> {
  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> kElesElement(
      FilterQuery<KEle> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'kEles');
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> rElesElement(
      FilterQuery<REle> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rEles');
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterFilterCondition> senseElesElement(
      FilterQuery<SenseEle> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'senseEles');
    });
  }
}

extension JPExpEntryQueryLinks
    on QueryBuilder<JPExpEntry, JPExpEntry, QFilterCondition> {}

extension JPExpEntryQuerySortBy
    on QueryBuilder<JPExpEntry, JPExpEntry, QSortBy> {}

extension JPExpEntryQuerySortThenBy
    on QueryBuilder<JPExpEntry, JPExpEntry, QSortThenBy> {
  QueryBuilder<JPExpEntry, JPExpEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JPExpEntry, JPExpEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension JPExpEntryQueryWhereDistinct
    on QueryBuilder<JPExpEntry, JPExpEntry, QDistinct> {}

extension JPExpEntryQueryProperty
    on QueryBuilder<JPExpEntry, JPExpEntry, QQueryProperty> {
  QueryBuilder<JPExpEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JPExpEntry, List<KEle>?, QQueryOperations> kElesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kEles');
    });
  }

  QueryBuilder<JPExpEntry, List<REle>?, QQueryOperations> rElesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rEles');
    });
  }

  QueryBuilder<JPExpEntry, List<SenseEle>?, QQueryOperations>
      senseElesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'senseEles');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const KEleSchema = Schema(
  name: r'KEle',
  id: 7636271363334511820,
  properties: {
    r'isCommon': PropertySchema(
      id: 0,
      name: r'isCommon',
      type: IsarType.bool,
    ),
    r'keInf': PropertySchema(
      id: 1,
      name: r'keInf',
      type: IsarType.stringList,
    ),
    r'keb': PropertySchema(
      id: 2,
      name: r'keb',
      type: IsarType.string,
    )
  },
  estimateSize: _kEleEstimateSize,
  serialize: _kEleSerialize,
  deserialize: _kEleDeserialize,
  deserializeProp: _kEleDeserializeProp,
);

int _kEleEstimateSize(
  KEle object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.keInf;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  bytesCount += 3 + object.keb.length * 3;
  return bytesCount;
}

void _kEleSerialize(
  KEle object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isCommon);
  writer.writeStringList(offsets[1], object.keInf);
  writer.writeString(offsets[2], object.keb);
}

KEle _kEleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KEle();
  object.isCommon = reader.readBool(offsets[0]);
  object.keInf = reader.readStringList(offsets[1]);
  object.keb = reader.readString(offsets[2]);
  return object;
}

P _kEleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension KEleQueryFilter on QueryBuilder<KEle, KEle, QFilterCondition> {
  QueryBuilder<KEle, KEle, QAfterFilterCondition> isCommonEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCommon',
        value: value,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'keInf',
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'keInf',
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keInf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keInf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keInf',
        value: '',
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keInf',
        value: '',
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> keInfLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keInf',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keb',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keb',
        value: '',
      ));
    });
  }

  QueryBuilder<KEle, KEle, QAfterFilterCondition> kebIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keb',
        value: '',
      ));
    });
  }
}

extension KEleQueryObject on QueryBuilder<KEle, KEle, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const REleSchema = Schema(
  name: r'REle',
  id: 6779693632401552829,
  properties: {
    r'isCommon': PropertySchema(
      id: 0,
      name: r'isCommon',
      type: IsarType.bool,
    ),
    r'reInf': PropertySchema(
      id: 1,
      name: r'reInf',
      type: IsarType.stringList,
    ),
    r'reNoKanji': PropertySchema(
      id: 2,
      name: r'reNoKanji',
      type: IsarType.bool,
    ),
    r'reRestr': PropertySchema(
      id: 3,
      name: r'reRestr',
      type: IsarType.stringList,
    ),
    r'reb': PropertySchema(
      id: 4,
      name: r'reb',
      type: IsarType.string,
    )
  },
  estimateSize: _rEleEstimateSize,
  serialize: _rEleSerialize,
  deserialize: _rEleDeserialize,
  deserializeProp: _rEleDeserializeProp,
);

int _rEleEstimateSize(
  REle object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.reInf;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.reRestr;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  bytesCount += 3 + object.reb.length * 3;
  return bytesCount;
}

void _rEleSerialize(
  REle object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isCommon);
  writer.writeStringList(offsets[1], object.reInf);
  writer.writeBool(offsets[2], object.reNoKanji);
  writer.writeStringList(offsets[3], object.reRestr);
  writer.writeString(offsets[4], object.reb);
}

REle _rEleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = REle();
  object.isCommon = reader.readBool(offsets[0]);
  object.reInf = reader.readStringList(offsets[1]);
  object.reNoKanji = reader.readBool(offsets[2]);
  object.reRestr = reader.readStringList(offsets[3]);
  object.reb = reader.readString(offsets[4]);
  return object;
}

P _rEleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension REleQueryFilter on QueryBuilder<REle, REle, QFilterCondition> {
  QueryBuilder<REle, REle, QAfterFilterCondition> isCommonEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCommon',
        value: value,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reInf',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reInf',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reInf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reInf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reInf',
        value: '',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reInf',
        value: '',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reInfLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reInf',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reNoKanjiEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reNoKanji',
        value: value,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reRestr',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reRestr',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reRestr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reRestr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reRestr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reRestr',
        value: '',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reRestr',
        value: '',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> reRestrLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reRestr',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reb',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reb',
        value: '',
      ));
    });
  }

  QueryBuilder<REle, REle, QAfterFilterCondition> rebIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reb',
        value: '',
      ));
    });
  }
}

extension REleQueryObject on QueryBuilder<REle, REle, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LSourceSchema = Schema(
  name: r'LSource',
  id: 5536285282437227742,
  properties: {
    r'lang': PropertySchema(
      id: 0,
      name: r'lang',
      type: IsarType.string,
    ),
    r'lsTypeFull': PropertySchema(
      id: 1,
      name: r'lsTypeFull',
      type: IsarType.bool,
    ),
    r'text': PropertySchema(
      id: 2,
      name: r'text',
      type: IsarType.string,
    ),
    r'waseiGo': PropertySchema(
      id: 3,
      name: r'waseiGo',
      type: IsarType.bool,
    )
  },
  estimateSize: _lSourceEstimateSize,
  serialize: _lSourceSerialize,
  deserialize: _lSourceDeserialize,
  deserializeProp: _lSourceDeserializeProp,
);

int _lSourceEstimateSize(
  LSource object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.lang.length * 3;
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _lSourceSerialize(
  LSource object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.lang);
  writer.writeBool(offsets[1], object.lsTypeFull);
  writer.writeString(offsets[2], object.text);
  writer.writeBool(offsets[3], object.waseiGo);
}

LSource _lSourceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LSource();
  object.lang = reader.readString(offsets[0]);
  object.lsTypeFull = reader.readBool(offsets[1]);
  object.text = reader.readStringOrNull(offsets[2]);
  object.waseiGo = reader.readBool(offsets[3]);
  return object;
}

P _lSourceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LSourceQueryFilter
    on QueryBuilder<LSource, LSource, QFilterCondition> {
  QueryBuilder<LSource, LSource, QAfterFilterCondition> langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> lsTypeFullEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lsTypeFull',
        value: value,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<LSource, LSource, QAfterFilterCondition> waseiGoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waseiGo',
        value: value,
      ));
    });
  }
}

extension LSourceQueryObject
    on QueryBuilder<LSource, LSource, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const GlossSchema = Schema(
  name: r'Gloss',
  id: -5781089117143327571,
  properties: {
    r'gType': PropertySchema(
      id: 0,
      name: r'gType',
      type: IsarType.string,
    ),
    r'lang': PropertySchema(
      id: 1,
      name: r'lang',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 2,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _glossEstimateSize,
  serialize: _glossSerialize,
  deserialize: _glossDeserialize,
  deserializeProp: _glossDeserializeProp,
);

int _glossEstimateSize(
  Gloss object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.gType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.lang.length * 3;
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _glossSerialize(
  Gloss object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.gType);
  writer.writeString(offsets[1], object.lang);
  writer.writeString(offsets[2], object.text);
}

Gloss _glossDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Gloss();
  object.gType = reader.readStringOrNull(offsets[0]);
  object.lang = reader.readString(offsets[1]);
  object.text = reader.readStringOrNull(offsets[2]);
  return object;
}

P _glossDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GlossQueryFilter on QueryBuilder<Gloss, Gloss, QFilterCondition> {
  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gType',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gType',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gType',
        value: '',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> gTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gType',
        value: '',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<Gloss, Gloss, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension GlossQueryObject on QueryBuilder<Gloss, Gloss, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const SenseEleSchema = Schema(
  name: r'SenseEle',
  id: -2556999221833312000,
  properties: {
    r'ant': PropertySchema(
      id: 0,
      name: r'ant',
      type: IsarType.stringList,
    ),
    r'dial': PropertySchema(
      id: 1,
      name: r'dial',
      type: IsarType.stringList,
    ),
    r'field': PropertySchema(
      id: 2,
      name: r'field',
      type: IsarType.stringList,
    ),
    r'gloss': PropertySchema(
      id: 3,
      name: r'gloss',
      type: IsarType.objectList,
      target: r'Gloss',
    ),
    r'lsource': PropertySchema(
      id: 4,
      name: r'lsource',
      type: IsarType.objectList,
      target: r'LSource',
    ),
    r'misc': PropertySchema(
      id: 5,
      name: r'misc',
      type: IsarType.stringList,
    ),
    r'pos': PropertySchema(
      id: 6,
      name: r'pos',
      type: IsarType.stringList,
    ),
    r'sInf': PropertySchema(
      id: 7,
      name: r'sInf',
      type: IsarType.stringList,
    ),
    r'stagk': PropertySchema(
      id: 8,
      name: r'stagk',
      type: IsarType.stringList,
    ),
    r'stagr': PropertySchema(
      id: 9,
      name: r'stagr',
      type: IsarType.stringList,
    ),
    r'xref': PropertySchema(
      id: 10,
      name: r'xref',
      type: IsarType.stringList,
    )
  },
  estimateSize: _senseEleEstimateSize,
  serialize: _senseEleSerialize,
  deserialize: _senseEleDeserialize,
  deserializeProp: _senseEleDeserializeProp,
);

int _senseEleEstimateSize(
  SenseEle object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.ant;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.dial;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.field;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.gloss;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Gloss]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += GlossSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.lsource;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LSource]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += LSourceSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.misc;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.pos;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.sInf;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.stagk;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.stagr;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.xref;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _senseEleSerialize(
  SenseEle object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.ant);
  writer.writeStringList(offsets[1], object.dial);
  writer.writeStringList(offsets[2], object.field);
  writer.writeObjectList<Gloss>(
    offsets[3],
    allOffsets,
    GlossSchema.serialize,
    object.gloss,
  );
  writer.writeObjectList<LSource>(
    offsets[4],
    allOffsets,
    LSourceSchema.serialize,
    object.lsource,
  );
  writer.writeStringList(offsets[5], object.misc);
  writer.writeStringList(offsets[6], object.pos);
  writer.writeStringList(offsets[7], object.sInf);
  writer.writeStringList(offsets[8], object.stagk);
  writer.writeStringList(offsets[9], object.stagr);
  writer.writeStringList(offsets[10], object.xref);
}

SenseEle _senseEleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SenseEle();
  object.ant = reader.readStringList(offsets[0]);
  object.dial = reader.readStringList(offsets[1]);
  object.field = reader.readStringList(offsets[2]);
  object.gloss = reader.readObjectList<Gloss>(
    offsets[3],
    GlossSchema.deserialize,
    allOffsets,
    Gloss(),
  );
  object.lsource = reader.readObjectList<LSource>(
    offsets[4],
    LSourceSchema.deserialize,
    allOffsets,
    LSource(),
  );
  object.misc = reader.readStringList(offsets[5]);
  object.pos = reader.readStringList(offsets[6]);
  object.sInf = reader.readStringList(offsets[7]);
  object.stagk = reader.readStringList(offsets[8]);
  object.stagr = reader.readStringList(offsets[9]);
  object.xref = reader.readStringList(offsets[10]);
  return object;
}

P _senseEleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readObjectList<Gloss>(
        offset,
        GlossSchema.deserialize,
        allOffsets,
        Gloss(),
      )) as P;
    case 4:
      return (reader.readObjectList<LSource>(
        offset,
        LSourceSchema.deserialize,
        allOffsets,
        LSource(),
      )) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringList(offset)) as P;
    case 9:
      return (reader.readStringList(offset)) as P;
    case 10:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SenseEleQueryFilter
    on QueryBuilder<SenseEle, SenseEle, QFilterCondition> {
  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ant',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ant',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ant',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      antElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ant',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> antLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ant',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dial',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dial',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      dialElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dial',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      dialElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dial',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> dialLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dial',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      fieldElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'field',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      fieldElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'field',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'field',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      fieldElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'field',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      fieldElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'field',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      fieldLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> fieldLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gloss',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gloss',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      glossLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gloss',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lsource',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lsource',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      lsourceLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lsource',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'misc',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'misc',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      miscElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'misc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'misc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'misc',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      miscElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'misc',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> miscLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pos',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pos',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pos',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      posElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pos',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> posLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pos',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sInf',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sInf',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      sInfElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sInf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sInf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sInf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sInf',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      sInfElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sInf',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> sInfLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sInf',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stagk',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stagk',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagkElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stagk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagkElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stagk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stagk',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagkElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stagk',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagkElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stagk',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagkLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagkLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagk',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stagr',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stagr',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagrElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stagr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagrElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stagr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stagr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagrElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stagr',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagrElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stagr',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      stagrLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> stagrLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stagr',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      xrefElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'xref',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'xref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'xref',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xref',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition>
      xrefElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'xref',
        value: '',
      ));
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> xrefLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension SenseEleQueryObject
    on QueryBuilder<SenseEle, SenseEle, QFilterCondition> {
  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> glossElement(
      FilterQuery<Gloss> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'gloss');
    });
  }

  QueryBuilder<SenseEle, SenseEle, QAfterFilterCondition> lsourceElement(
      FilterQuery<LSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lsource');
    });
  }
}
