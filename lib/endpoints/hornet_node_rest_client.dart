import 'package:hornet_node/endpoints/models/auth/auth.dart';
import 'package:hornet_node/endpoints/models/info/info.dart';
import 'package:hornet_node/endpoints/models/tips/tips.dart';
import 'package:hornet_node/endpoints/models/treasury/treasury.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'hornet_node_rest_client.g.dart';

@RestApi()
abstract class HornetNodeRestClient {
  factory HornetNodeRestClient(Dio dio, {String baseUrl}) =
      _HornetNodeRestClient;

  @POST('{baseUrl}/auth')
  Future<void> login(@Path() String baseUrl, @Body() Auth auth);

  // Public endpoints

  @GET('{baseUrl}/api/v1/info')
  Future<Info> info(@Path() String baseUrl);

  @GET('{baseUrl}/api/v1/tips')
  Future<Tips> tips(@Path() String baseUrl);

  @GET('{baseUrl}/api/v1/treasury')
  Future<Treasury> treasury(@Path() String baseUrl);

  @GET('{baseUrl}/health')
  Future<HttpResponse<void>> health(@Path() String baseUrl);

  // Private endpoints
  // @Header("x-csrf-token") String csrfToken

}
