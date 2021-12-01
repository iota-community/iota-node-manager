// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Peer _$$_PeerFromJson(Map<String, dynamic> json) => _$_Peer(
      id: json['id'] as String,
      multiAddresses: (json['multiAddresses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      alias: json['alias'] as String?,
      relation: json['relation'] as String,
      connected: json['connected'] as bool,
      gossip: json['gossip'] == null
          ? null
          : Gossip.fromJson(json['gossip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PeerToJson(_$_Peer instance) => <String, dynamic>{
      'id': instance.id,
      'multiAddresses': instance.multiAddresses,
      'alias': instance.alias,
      'relation': instance.relation,
      'connected': instance.connected,
      'gossip': instance.gossip,
    };
