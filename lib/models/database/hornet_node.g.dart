// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hornet_node.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HornetNodeAdapter extends TypeAdapter<HornetNode> {
  @override
  final int typeId = 1;

  @override
  HornetNode read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HornetNode(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HornetNode obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.uuid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HornetNodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
