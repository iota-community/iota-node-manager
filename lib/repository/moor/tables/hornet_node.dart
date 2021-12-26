part of '../database.dart';

class Nodes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 64)();
  TextColumn get url => text()();
  TextColumn get jwtToken => text().nullable()();

  IntColumn get type => integer().withDefault(const Constant(0))();
}
