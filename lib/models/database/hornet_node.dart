import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'hornet_node.g.dart';

@HiveType(typeId: 1)
class HornetNode extends HiveObject {
  HornetNode(this.name, this.url, this.uuid);

  HornetNode.empty() {
    name = '';
    url = '';
    uuid = const Uuid().v1();
  }

  @HiveField(0)
  late String name;

  @HiveField(1)
  late String url;

  @HiveField(2)
  late String uuid;
}
