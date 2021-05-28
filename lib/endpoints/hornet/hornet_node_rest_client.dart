import 'package:hornet_node/models/hornet/auth/auth.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
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
}
