import 'package:hornet_node/repository/moor/database.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

abstract class NodeRepository {
  Future<Node> addNode(
    String name,
    String url,
    String jwt,
    int type, {
    bool selected = false,
  });

  Future<void> updateNode(Node node);

  Future<void> removeNode(int id);

  Future<void> setSelectedNode(int? id);

  Future<List<Node>> getNodes();

  Stream<List<Node>> getNodesStream();

  Future<Node?> getNode(int id);

  Stream<Node?> getNodeStream(int id);

  Future<Node?> getSelectedNode();

  Stream<Node?> getSelectedNodeStream();
  Future<bool> areNodesAvailable();
  Future<bool> isANodeSelected();
}

@Injectable(as: NodeRepository)
class NodeRepositoryMoorImpl extends NodeRepository {
  NodeRepositoryMoorImpl(this._database, this._prefs);

  final HornetNodeDB _database;
  final String selectedNodeKey = 'selectedNode';
  final RxSharedPreferences _prefs;

  @override
  Future<Node> addNode(String name, String url, String jwt, int type,
      {bool selected = false}) async {
    final node = await _database.addNode(
      NodesCompanion.insert(
        name: name,
        url: url,
        jwtToken: Value(jwt),
        type: Value(type),
      ),
    );
    if (selected) {
      await _prefs.setInt(selectedNodeKey, node.id);
    }
    return node;
  }

  @override
  Future<void> removeNode(int id) {
    return _database.deleteNode(id);
  }

  @override
  Future<Node?> getNode(int id) async {
    return _database.findNode(id);
  }

  @override
  Future<List<Node>> getNodes() async {
    return _database.findAll;
  }

  @override
  Future<Node?> getSelectedNode() async {
    final id = await _prefs.getInt(selectedNodeKey);
    if (id != null) {
      return _database.findNode(id);
    } else {
      return null;
    }
  }

  @override
  Stream<Node?> getSelectedNodeStream() {
    return _prefs.getIntStream(selectedNodeKey).asyncMap(_database.findNode);
  }

  @override
  Future<void> setSelectedNode(int? id) {
    return _prefs.setInt(selectedNodeKey, id);
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
    if (await _prefs.getInt(selectedNodeKey) != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> updateNode(Node node) {
    return _database.updateNode(node);
  }

  @override
  Stream<Node?> getNodeStream(int id) {
    return _database.findNodeStream(id);
  }

  @override
  Stream<List<Node>> getNodesStream() {
    return _database.findAllStream;
  }
}
