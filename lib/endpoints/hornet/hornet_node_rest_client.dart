import 'package:flutter/services.dart';
import 'package:hornet_node/models/hornet/auth/auth.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:hornet_node/models/hornet/milestone/milestone.dart';
import 'package:hornet_node/models/hornet/tips/tips.dart';
import 'package:hornet_node/models/hornet/treasury/treasury.dart';
import 'package:retrofit/retrofit.dart';

abstract class HornetNodeRestClient {
  Future<void> login(String baseUrl, Auth auth);
  Future<Info> info(String baseUrl);

  Future<Tips> tips(String baseUrl);

  Future<Treasury> treasury(String baseUrl);

  Future<HttpResponse<void>> health(String baseUrl);

  Future<Milestone> milestone(String baseUrl, int index);

  Future<Message> message(String baseUrl, String messageId);

  Future<MessageMetadata> messageMetadata(String baseUrl, String messageId);

  Future<MessageChildren> messageChildren(String baseUrl, String messageId);

  Future<dynamic> messageRaw(String baseUrl, String messageId);
}
