// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_config.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlobalConfigAdapter extends TypeAdapter<GlobalConfig> {
  @override
  final int typeId = 0;

  @override
  GlobalConfig read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlobalConfig(
      showIntro: fields[0] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, GlobalConfig obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.showIntro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlobalConfigAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
