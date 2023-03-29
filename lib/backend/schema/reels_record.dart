import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reels_record.g.dart';

abstract class ReelsRecord implements Built<ReelsRecord, ReelsRecordBuilder> {
  static Serializer<ReelsRecord> get serializer => _$reelsRecordSerializer;

  String? get image;

  String? get video;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReelsRecordBuilder builder) => builder
    ..image = ''
    ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reels');

  static Stream<ReelsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReelsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReelsRecord._();
  factory ReelsRecord([void Function(ReelsRecordBuilder) updates]) =
      _$ReelsRecord;

  static ReelsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReelsRecordData({
  String? image,
  String? video,
}) {
  final firestoreData = serializers.toFirestore(
    ReelsRecord.serializer,
    ReelsRecord(
      (r) => r
        ..image = image
        ..video = video,
    ),
  );

  return firestoreData;
}
