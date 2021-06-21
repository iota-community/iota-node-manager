// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hornet_node_dio_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _HornetNodeDioRestClientImpl implements HornetNodeDioRestClientImpl {
  _HornetNodeDioRestClientImpl(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Info> info(baseUrl, jwtToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Info>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/info',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Info.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Tips> tips(baseUrl, jwtToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Tips>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/tips',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Tips.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Treasury> treasury(baseUrl, jwtToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Treasury>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/treasury',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Treasury.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HttpResponse<void>> health(baseUrl, jwtToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<void>(_setStreamType<HttpResponse<void>>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/health',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final httpResponse = HttpResponse(null, _result);
    return httpResponse;
  }

  @override
  Future<Milestone> milestone(baseUrl, jwtToken, index) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Milestone>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/milestones/$index',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Milestone.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Message> message(baseUrl, jwtToken, messageId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Message>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/messages/$messageId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Message.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageMetadata> messageMetadata(baseUrl, jwtToken, messageId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageMetadata>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(
                _dio.options, '$baseUrl/api/v1/messages/$messageId/metadata',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageMetadata.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageChildren> messageChildren(baseUrl, jwtToken, messageId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageChildren>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(
                _dio.options, '$baseUrl/api/v1/messages/$messageId/children',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageChildren.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<int>> messageRaw(baseUrl, jwtToken, messageId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<int>>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/octet-stream',
                  r'Authorization': jwtToken
                },
                extra: _extra,
                contentType: 'application/octet-stream',
                responseType: ResponseType.bytes)
            .compose(_dio.options, '$baseUrl/api/v1/messages/$messageId/raw',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<int>();
    return value;
  }

  @override
  Future<Peers> peers(baseUrl, jwtToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Peers>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/peers',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Peers.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Peer> peer(baseUrl, jwtToken, peerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Peer>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/peers/$peerId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Peer.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageChildren> addPeer(baseUrl, jwtToken, body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageChildren>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/peers',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageChildren.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageChildren> removePeer(baseUrl, jwtToken, peerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageChildren>(Options(
                method: 'DELETE',
                headers: <String, dynamic>{r'Authorization': jwtToken},
                extra: _extra)
            .compose(_dio.options, '$baseUrl/api/v1/peers/$peerId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageChildren.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
