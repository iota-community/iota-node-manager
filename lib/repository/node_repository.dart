import 'package:hive/hive.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:injectable/injectable.dart';

abstract class NodeRepository {
  Future<void> addNode(HornetNode node);
  Future<void> removeNode(String uuid);
  Future<void> setSelectedNode(HornetNode node);

  List<HornetNode> getNodes();
  HornetNode? getNode(String uuid);
  HornetNode? getSelectedNode();
  bool areNodesAvailable();
  bool isANodeSelected();
}

@Injectable(as: NodeRepository)
class NodeRepositoryHiveImpl extends NodeRepository {
  NodeRepositoryHiveImpl(
    @Named(HiveBoxConstants.nodesBox) this._nodesBox,
    @Named(HiveBoxConstants.selectedNodeBox) this._selectedNodeBox,
  );

  final Box<List> _nodesBox;
  final Box<HornetNode> _selectedNodeBox;

  @override
  Future<void> addNode(HornetNode node) {
    var nodes = getNodes();
    nodes = [...nodes, node];
    return _nodesBox.put('nodes', nodes);
  }

  @override
  Future<void> removeNode(String uuid) {
    var nodes = getNodes()
      ..removeWhere(
        (node) => node.uuid == uuid,
      );
    return _nodesBox.put('nodes', nodes);
  }

  @override
  HornetNode? getNode(String uuid) {
    var nodes = getNodes();
    return nodes.firstWhere(
      (node) => node.uuid == uuid,
    );
  }

  @override
  List<HornetNode> getNodes() {
    return _nodesBox.get('nodes', defaultValue: [])!.cast<HornetNode>();
  }

  @override
  HornetNode? getSelectedNode() {
    return _selectedNodeBox.get('selectedNode');
  }

  @override
  Future<void> setSelectedNode(HornetNode node) {
    return _selectedNodeBox.put('selectedNode', node);
  }

  @override
  bool areNodesAvailable() {
    return getNodes().isNotEmpty;
  }

  @override
  bool isANodeSelected() {
    return getSelectedNode() != null;
  }
}
