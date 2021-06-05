import 'package:hornet_node/repository/moor/database.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

abstract class NodeRepository {
  Future<Node> addNode(String name, String url, {bool selected = false});
  Future<void> updateNode(Node node);
  Future<void> removeNode(int id);
  Future<void> setSelectedNode(int id);

  Future<List<Node>> getNodes();
  Stream<List<Node>> getNodesStream();
  Future<Node> getNode(int id);
  Stream<Node> getNodeStream(int id);
  Future<Node?> getSelectedNode();
  Stream<Node> getSelectedNodeStream();
  Future<bool> areNodesAvailable();
  Future<bool> isANodeSelected();
}

@Injectable(as: NodeRepository)
class NodeRepositoryMoorImpl extends NodeRepository {
  NodeRepositoryMoorImpl(this._database);

  final HornetNodeDB _database;
  final String selectedNodeKey = 'selectedNode';

  @override
  Future<Node> addNode(String name, String url, {bool selected = false}) {
    return _database.addNode(
        NodesCompanion.insert(name: name, url: url, selected: Value(selected)));
  }

  @override
  Future<void> removeNode(int id) {
    return _database.deleteNode(id);
  }

  @override
  Future<Node> getNode(int id) async {
    return await _database.findNode(id);
  }

  @override
  Future<List<Node>> getNodes() async {
    return await _database.findAll;
  }

  @override
  Future<Node?> getSelectedNode() {
    return _database.findSelectedNode();
  }

  @override
  Stream<Node> getSelectedNodeStream() {
    return _database.findSelectedNodeStream();
  }

  @override
  Future<void> setSelectedNode(int id) {
    return _database.setSelectedNode(id);
  }

  @override
  Future<bool> areNodesAvailable() async {
    if (await _database.amountOfNodes > 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> isANodeSelected() async {
    try {
      await _database.findSelectedNode();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  Future<void> updateNode(Node node) {
    return _database.updateNode(node);
  }

  @override
  Stream<Node> getNodeStream(int id) {
    return _database.findNodeStream(id);
  }

  @override
  Stream<List<Node>> getNodesStream() {
    return _database.findAllStream;
  }
}
