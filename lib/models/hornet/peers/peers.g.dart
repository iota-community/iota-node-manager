// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Peers _$_$_PeersFromJson(Map<String, dynamic> json) {
  return _$_Peers(
    data: (json['data'] as List<dynamic>)
        .map((e) => Peer.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PeersToJson(_$_Peers instance) => <String, dynamic>{
      'data': instance.data,
    };
