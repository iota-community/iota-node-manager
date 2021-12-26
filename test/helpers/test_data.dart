import 'package:hornet_node/repository/moor/constants/node_types.dart';
import 'package:hornet_node/repository/moor/database.dart';

var node = Node(
    id: 1,
    name: 'Main',
    url: 'https//iota.test.com',
    type: NodeTypes.hornet.index,
    jwtToken:
        // ignore: lines_longer_than_80_chars
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIxMkQzS29vV0FHYm9XZ1JlYkdWUDhYb0xxVGdkVmp0S25mZVVSNFZucTNjQ0FVM045N1NrIiwianRpIjoiMTYyMzM2MTQ3MSIsImlhdCI6MTYyMzM2MTQ3MSwiaXNzIjoiMTJEM0tvb1dBR2JvV2dSZWJHVlA4WG9McVRnZFZqdEtuZmVVUjRWbnEzY0NBVTNOOTdTayIsIm5iZiI6MTYyMzM2MTQ3MSwic3ViIjoiSE9STkVUIiwiZGFzaGJvYXJkIjpmYWxzZSwiYXBpIjp0cnVlfQ.KAuYgLZAoRcSMK72h29L6NMaCktMOz9P6WwV_CBx2xE');
