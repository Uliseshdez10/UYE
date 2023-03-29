// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReelsRecord> _$reelsRecordSerializer = new _$ReelsRecordSerializer();

class _$ReelsRecordSerializer implements StructuredSerializer<ReelsRecord> {
  @override
  final Iterable<Type> types = const [ReelsRecord, _$ReelsRecord];
  @override
  final String wireName = 'ReelsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReelsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ReelsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReelsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ReelsRecord extends ReelsRecord {
  @override
  final String? image;
  @override
  final String? video;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReelsRecord([void Function(ReelsRecordBuilder)? updates]) =>
      (new ReelsRecordBuilder()..update(updates))._build();

  _$ReelsRecord._({this.image, this.video, this.ffRef}) : super._();

  @override
  ReelsRecord rebuild(void Function(ReelsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReelsRecordBuilder toBuilder() => new ReelsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReelsRecord &&
        image == other.image &&
        video == other.video &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReelsRecord')
          ..add('image', image)
          ..add('video', video)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReelsRecordBuilder implements Builder<ReelsRecord, ReelsRecordBuilder> {
  _$ReelsRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReelsRecordBuilder() {
    ReelsRecord._initializeBuilder(this);
  }

  ReelsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _video = $v.video;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReelsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReelsRecord;
  }

  @override
  void update(void Function(ReelsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReelsRecord build() => _build();

  _$ReelsRecord _build() {
    final _$result =
        _$v ?? new _$ReelsRecord._(image: image, video: video, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
