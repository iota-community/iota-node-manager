import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'tables/hornet_node.dart';
part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Nodes])
class HornetNodeDB extends _$HornetNodeDB {
  HornetNodeDB() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {});

  Future<List<Node>> get findAll => select(nodes).get();

  Stream<List<Node>> get findAllStream => select(nodes).watch();

  Stream<Node> findNodeStream(int id) {
    return (select(nodes)..where((t) => t.id.equals(id))).watchSingle();
  }

  Future<Node> findNode(int id) {
    return (select(nodes)..where((t) => t.id.equals(id))).getSingle();
  }

  Future updateNode(Node entry) {
    return update(nodes).replace(entry);
  }

  Future deleteNode(int id) {
    return (delete(nodes)..where((t) => t.id.equals(id))).go();
  }

  Future<Node> addNode(NodesCompanion entry) {
    return into(nodes).insertReturning(entry);
  }

  Future<void> createOrUpdateNode(Node node) {
    return into(nodes).insertOnConflictUpdate(node);
  }

  Future<int> get amountOfNodes async {
    final count = countAll();
    var res = await (selectOnly(nodes)..addColumns([count]))
        .map((row) => row.read(count))
        .getSingle();
    return res;
  }
}
