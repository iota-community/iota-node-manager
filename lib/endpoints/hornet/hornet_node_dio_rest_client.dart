import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:hornet_node/models/hornet/milestone/milestone.dart';
import 'package:hornet_node/models/hornet/tips/tips.dart';
import 'package:hornet_node/models/hornet/treasury/treasury.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'hornet_node_dio_rest_client.g.dart';

@LazySingleton(as: HornetNodeRestClient)
@RestApi()
abstract class HornetNodeDioRestClientImpl extends HornetNodeRestClient {
  @factoryMethod
  factory HornetNodeDioRestClientImpl(Dio dio) = _HornetNodeDioRestClientImpl;

  @override
  @GET('{baseUrl}/api/v1/info')
  Future<Info> info(
      @Path() String baseUrl, @Header('Authorization') String jwtToken);

  @override
  @GET('{baseUrl}/api/v1/tips')
  Future<Tips> tips(
      @Path() String baseUrl, @Header('Authorization') String jwtToken);

  @override
  @GET('{baseUrl}/api/v1/treasury')
  Future<Treasury> treasury(
      @Path() String baseUrl, @Header('Authorization') String jwtToken);

  @override
  @GET('{baseUrl}/health')
  Future<HttpResponse<void>> health(
      @Path() String baseUrl, @Header('Authorization') String jwtToken);

  @override
  @GET('{baseUrl}/api/v1/milestones/{index}')
  Future<Milestone> milestone(@Path() String baseUrl,
      @Header('Authorization') String jwtToken, @Path() int index);

  @override
  @GET('{baseUrl}/api/v1/messages/{messageId}')
  Future<Message> message(@Path() String baseUrl,
      @Header('Authorization') String jwtToken, @Path() String messageId);

  @override
  @GET('{baseUrl}/api/v1/messages/{messageId}/metadata')
  Future<MessageMetadata> messageMetadata(@Path() String baseUrl,
      @Path() String jwtToken, @Path() String messageId);

  @override
  @GET('{baseUrl}/api/v1/messages/{messageId}/children')
  Future<MessageChildren> messageChildren(@Path() String baseUrl,
      @Path() String jwtToken, @Path() String messageId);

  @override
  @GET('{baseUrl}/api/v1/messages/{messageId}/raw')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/octet-stream',
    'Authorization': '{jwtToken}'
  })
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> messageRaw(@Path() String baseUrl,
      @Header('Authorization') String jwtToken, @Path() String messageId);
}
