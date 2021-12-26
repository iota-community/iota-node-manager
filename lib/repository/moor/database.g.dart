// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Node extends DataClass implements Insertable<Node> {
  final int id;
  final String name;
  final String url;
  final String? jwtToken;
  final int type;

  Node(
      {required this.id,
      required this.name,
      required this.url,
      this.jwtToken,
      required this.type});

  factory Node.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Node(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      jwtToken: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}jwt_token']),
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || jwtToken != null) {
      map['jwt_token'] = Variable<String?>(jwtToken);
    }
    map['type'] = Variable<int>(type);
    return map;
  }

  NodesCompanion toCompanion(bool nullToAbsent) {
    return NodesCompanion(
      id: Value(id),
      name: Value(name),
      url: Value(url),
      jwtToken: jwtToken == null && nullToAbsent
          ? const Value.absent()
          : Value(jwtToken),
      type: Value(type),
    );
  }

  factory Node.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Node(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      url: serializer.fromJson<String>(json['url']),
      jwtToken: serializer.fromJson<String?>(json['jwtToken']),
      type: serializer.fromJson<int>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'url': serializer.toJson<String>(url),
      'jwtToken': serializer.toJson<String?>(jwtToken),
      'type': serializer.toJson<int>(type),
    };
  }

  Node copyWith(
          {int? id, String? name, String? url, String? jwtToken, int? type}) =>
      Node(
        id: id ?? this.id,
        name: name ?? this.name,
        url: url ?? this.url,
        jwtToken: jwtToken ?? this.jwtToken,
        type: type ?? this.type,
      );

  @override
  String toString() {
    return (StringBuffer('Node(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, url, jwtToken, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Node &&
          other.id == this.id &&
          other.name == this.name &&
          other.url == this.url &&
          other.jwtToken == this.jwtToken &&
          other.type == this.type);
}

class NodesCompanion extends UpdateCompanion<Node> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> url;
  final Value<String?> jwtToken;
  final Value<int> type;

  const NodesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
    this.jwtToken = const Value.absent(),
    this.type = const Value.absent(),
  });

  NodesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String url,
    this.jwtToken = const Value.absent(),
    this.type = const Value.absent(),
  })  : name = Value(name),
        url = Value(url);
  static Insertable<Node> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? url,
    Expression<String?>? jwtToken,
    Expression<int>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (jwtToken != null) 'jwt_token': jwtToken,
      if (type != null) 'type': type,
    });
  }

  NodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? url,
      Value<String?>? jwtToken,
      Value<int>? type}) {
    return NodesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      jwtToken: jwtToken ?? this.jwtToken,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (jwtToken.present) {
      map['jwt_token'] = Variable<String?>(jwtToken.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NodesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $NodesTable extends Nodes with TableInfo<$NodesTable, Node> {
  final GeneratedDatabase _db;
  final String? _alias;
  $NodesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 64),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String?> url = GeneratedColumn<String?>(
      'url', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _jwtTokenMeta = const VerificationMeta('jwtToken');
  late final GeneratedColumn<String?> jwtToken = GeneratedColumn<String?>(
      'jwt_token', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: const Constant(0));

  @override
  List<GeneratedColumn> get $columns => [id, name, url, jwtToken, type];

  @override
  String get aliasedName => _alias ?? 'nodes';

  @override
  String get actualTableName => 'nodes';

  @override
  VerificationContext validateIntegrity(Insertable<Node> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('jwt_token')) {
      context.handle(_jwtTokenMeta,
          jwtToken.isAcceptableOrUnknown(data['jwt_token']!, _jwtTokenMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Node map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Node.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NodesTable createAlias(String alias) {
    return $NodesTable(_db, alias);
  }
}

abstract class _$HornetNodeDB extends GeneratedDatabase {
  _$HornetNodeDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NodesTable nodes = $NodesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nodes];
}
