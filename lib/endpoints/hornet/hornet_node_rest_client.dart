import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:hornet_node/models/hornet/milestone/milestone.dart';
import 'package:hornet_node/models/hornet/tips/tips.dart';
import 'package:hornet_node/models/hornet/treasury/treasury.dart';
import 'package:retrofit/retrofit.dart';

abstract class HornetNodeRestClient {
  Future<Info> info(String baseUrl, String jwtToken);

  Future<Tips> tips(String baseUrl, String jwtToken);

  Future<Treasury> treasury(String baseUrl, String jwtToken);

  Future<HttpResponse<void>> health(String baseUrl, String jwtToken);

  Future<Milestone> milestone(String baseUrl, String jwtToken, int index);

  Future<Message> message(String baseUrl, String jwtToken, String messageId);

  Future<MessageMetadata> messageMetadata(
      String baseUrl, String jwtToken, String messageId);

  Future<MessageChildren> messageChildren(
      String baseUrl, String jwtToken, String messageId);

  Future<List<int>> messageRaw(
      String baseUrl, String jwtToken, String messageId);
}
