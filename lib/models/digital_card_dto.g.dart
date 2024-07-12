// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_card_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDigitalCardDTOCollection on Isar {
  IsarCollection<DigitalCardDTO> get digitalCardDTOs => this.collection();
}

const DigitalCardDTOSchema = CollectionSchema(
  name: r'DigitalCardDTO',
  id: 5849168380414594811,
  properties: {
    r'addedToContactsAt': PropertySchema(
      id: 0,
      name: r'addedToContactsAt',
      type: IsarType.dateTime,
    ),
    r'avatarUrl': PropertySchema(
      id: 1,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'color': PropertySchema(
      id: 2,
      name: r'color',
      type: IsarType.long,
    ),
    r'company': PropertySchema(
      id: 3,
      name: r'company',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'firstName': PropertySchema(
      id: 5,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'headline': PropertySchema(
      id: 6,
      name: r'headline',
      type: IsarType.string,
    ),
    r'lastName': PropertySchema(
      id: 7,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'layout': PropertySchema(
      id: 8,
      name: r'layout',
      type: IsarType.long,
    ),
    r'logoUrl': PropertySchema(
      id: 9,
      name: r'logoUrl',
      type: IsarType.string,
    ),
    r'middleName': PropertySchema(
      id: 10,
      name: r'middleName',
      type: IsarType.string,
    ),
    r'position': PropertySchema(
      id: 11,
      name: r'position',
      type: IsarType.string,
    ),
    r'prefix': PropertySchema(
      id: 12,
      name: r'prefix',
      type: IsarType.string,
    ),
    r'suffix': PropertySchema(
      id: 13,
      name: r'suffix',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 14,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 15,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 16,
      name: r'userId',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 17,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _digitalCardDTOEstimateSize,
  serialize: _digitalCardDTOSerialize,
  deserialize: _digitalCardDTODeserialize,
  deserializeProp: _digitalCardDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _digitalCardDTOGetId,
  getLinks: _digitalCardDTOGetLinks,
  attach: _digitalCardDTOAttach,
  version: '3.1.0+1',
);

int _digitalCardDTOEstimateSize(
  DigitalCardDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatarUrl.length * 3;
  bytesCount += 3 + object.company.length * 3;
  bytesCount += 3 + object.firstName.length * 3;
  bytesCount += 3 + object.headline.length * 3;
  bytesCount += 3 + object.lastName.length * 3;
  bytesCount += 3 + object.logoUrl.length * 3;
  bytesCount += 3 + object.middleName.length * 3;
  bytesCount += 3 + object.position.length * 3;
  bytesCount += 3 + object.prefix.length * 3;
  bytesCount += 3 + object.suffix.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _digitalCardDTOSerialize(
  DigitalCardDTO object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.addedToContactsAt);
  writer.writeString(offsets[1], object.avatarUrl);
  writer.writeLong(offsets[2], object.color);
  writer.writeString(offsets[3], object.company);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.firstName);
  writer.writeString(offsets[6], object.headline);
  writer.writeString(offsets[7], object.lastName);
  writer.writeLong(offsets[8], object.layout);
  writer.writeString(offsets[9], object.logoUrl);
  writer.writeString(offsets[10], object.middleName);
  writer.writeString(offsets[11], object.position);
  writer.writeString(offsets[12], object.prefix);
  writer.writeString(offsets[13], object.suffix);
  writer.writeString(offsets[14], object.title);
  writer.writeDateTime(offsets[15], object.updatedAt);
  writer.writeString(offsets[16], object.userId);
  writer.writeString(offsets[17], object.uuid);
}

DigitalCardDTO _digitalCardDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DigitalCardDTO(
    addedToContactsAt: reader.readDateTimeOrNull(offsets[0]),
    avatarUrl: reader.readString(offsets[1]),
    color: reader.readLong(offsets[2]),
    company: reader.readString(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    firstName: reader.readString(offsets[5]),
    headline: reader.readString(offsets[6]),
    id: id,
    lastName: reader.readString(offsets[7]),
    layout: reader.readLong(offsets[8]),
    logoUrl: reader.readString(offsets[9]),
    middleName: reader.readString(offsets[10]),
    position: reader.readString(offsets[11]),
    prefix: reader.readString(offsets[12]),
    suffix: reader.readString(offsets[13]),
    title: reader.readString(offsets[14]),
    updatedAt: reader.readDateTimeOrNull(offsets[15]),
    userId: reader.readString(offsets[16]),
    uuid: reader.readString(offsets[17]),
  );
  return object;
}

P _digitalCardDTODeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _digitalCardDTOGetId(DigitalCardDTO object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _digitalCardDTOGetLinks(DigitalCardDTO object) {
  return [];
}

void _digitalCardDTOAttach(
    IsarCollection<dynamic> col, Id id, DigitalCardDTO object) {}

extension DigitalCardDTOQueryWhereSort
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QWhere> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DigitalCardDTOQueryWhere
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QWhereClause> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterWhereClause> idBetween(
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

extension DigitalCardDTOQueryFilter
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QFilterCondition> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'addedToContactsAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'addedToContactsAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedToContactsAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedToContactsAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedToContactsAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      addedToContactsAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedToContactsAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      colorEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      colorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      colorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      colorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headline',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      headlineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headline',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      layoutEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'layout',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      layoutGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'layout',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      layoutLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'layout',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      layoutBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'layout',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      logoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'middleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'middleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      middleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'position',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'position',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prefix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prefix',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prefix',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      prefixIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prefix',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suffix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'suffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'suffix',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suffix',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      suffixIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'suffix',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension DigitalCardDTOQueryObject
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QFilterCondition> {}

extension DigitalCardDTOQueryLinks
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QFilterCondition> {}

extension DigitalCardDTOQuerySortBy
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QSortBy> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByAddedToContactsAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedToContactsAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByAddedToContactsAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedToContactsAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByHeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headline', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByHeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headline', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByLayout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'layout', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByLayoutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'layout', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByLogoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoUrl', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByLogoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoUrl', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByPrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prefix', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByPrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prefix', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortBySuffix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suffix', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortBySuffixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suffix', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension DigitalCardDTOQuerySortThenBy
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QSortThenBy> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByAddedToContactsAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedToContactsAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByAddedToContactsAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedToContactsAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByHeadline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headline', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByHeadlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headline', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByLayout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'layout', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByLayoutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'layout', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByLogoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoUrl', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByLogoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoUrl', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByPrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prefix', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByPrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prefix', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenBySuffix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suffix', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenBySuffixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suffix', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension DigitalCardDTOQueryWhereDistinct
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> {
  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct>
      distinctByAddedToContactsAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedToContactsAt');
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByAvatarUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color');
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByHeadline(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headline', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByLayout() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'layout');
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByLogoUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logoUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByMiddleName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'middleName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByPrefix(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prefix', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctBySuffix(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suffix', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalCardDTO, DigitalCardDTO, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension DigitalCardDTOQueryProperty
    on QueryBuilder<DigitalCardDTO, DigitalCardDTO, QQueryProperty> {
  QueryBuilder<DigitalCardDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DigitalCardDTO, DateTime?, QQueryOperations>
      addedToContactsAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedToContactsAt');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<DigitalCardDTO, int, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<DigitalCardDTO, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> headlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headline');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<DigitalCardDTO, int, QQueryOperations> layoutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'layout');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> logoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logoUrl');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> middleNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'middleName');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> prefixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prefix');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> suffixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suffix');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<DigitalCardDTO, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<DigitalCardDTO, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DigitalCardDTOImpl _$$DigitalCardDTOImplFromJson(Map<String, dynamic> json) =>
    _$DigitalCardDTOImpl(
      id: (json['id'] as num?)?.toInt() ?? Isar.autoIncrement,
      userId: json['userId'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
      logoUrl: json['logoUrl'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      addedToContactsAt: json['addedToContactsAt'] == null
          ? null
          : DateTime.parse(json['addedToContactsAt'] as String),
      color: (json['color'] as num?)?.toInt() ?? defaultColor,
      title: json['title'] as String? ?? "New Card",
      firstName: json['firstName'] as String? ?? '',
      prefix: json['prefix'] as String? ?? '',
      middleName: json['middleName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      suffix: json['suffix'] as String? ?? '',
      layout: (json['layout'] as num?)?.toInt() ?? 0,
      position: json['position'] as String? ?? '',
      company: json['company'] as String? ?? '',
      headline: json['headline'] as String? ?? '',
    );

Map<String, dynamic> _$$DigitalCardDTOImplToJson(
        _$DigitalCardDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'uuid': instance.uuid,
      'logoUrl': instance.logoUrl,
      'avatarUrl': instance.avatarUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'addedToContactsAt': instance.addedToContactsAt?.toIso8601String(),
      'color': instance.color,
      'title': instance.title,
      'firstName': instance.firstName,
      'prefix': instance.prefix,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'suffix': instance.suffix,
      'layout': instance.layout,
      'position': instance.position,
      'company': instance.company,
      'headline': instance.headline,
    };
