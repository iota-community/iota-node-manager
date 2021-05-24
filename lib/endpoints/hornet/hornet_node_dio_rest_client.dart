import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/auth/auth.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/models/hornet/tips/tips.dart';
import 'package:hornet_node/models/hornet/treasury/treasury.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'hornet_node_dio_rest_client.g.dart';

@LazySingleton(as: HornetNodeRestClient)
@RestApi()
abstract class HornetNodeDioRestClientImpl extends HornetNodeRestClient {
  @factoryMethod
  factory HornetNodeDioRestClientImpl(Dio dio) = _HornetNodeDioRestClientImpl;

  @override
  @POST('{baseUrl}/auth')
  Future<void> login(@Path() String baseUrl, @Body() Auth auth);

  // Public endpoints

  @override
  @GET('{baseUrl}/api/v1/info')
  Future<Info> info(@Path() String baseUrl);

  @override
  @GET('{baseUrl}/api/v1/tips')
  Future<Tips> tips(@Path() String baseUrl);

  @override
  @GET('{baseUrl}/api/v1/treasury')
  Future<Treasury> treasury(@Path() String baseUrl);

  @override
  @GET('{baseUrl}/health')
  Future<HttpResponse<void>> health(@Path() String baseUrl);

  // Private endpoints
  // @Header("x-csrf-token") String csrfToken

}
