import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ordercollection_record.g.dart';

abstract class OrdercollectionRecord
    implements Built<OrdercollectionRecord, OrdercollectionRecordBuilder> {
  static Serializer<OrdercollectionRecord> get serializer =>
      _$ordercollectionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_info')
  DocumentReference get userInfo;

  @nullable
  @BuiltValueField(wireName: 'order_count')
  int get orderCount;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'ordered_item')
  DocumentReference get orderedItem;

  @nullable
  @BuiltValueField(wireName: 'created_times')
  DateTime get createdTimes;

  @nullable
  @BuiltValueField(wireName: 'order_name')
  String get orderName;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  int get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdercollectionRecordBuilder builder) =>
      builder
        ..orderCount = 0
        ..photoUrl = ''
        ..orderName = ''
        ..phoneNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordercollection');

  static Stream<OrdercollectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdercollectionRecord._();
  factory OrdercollectionRecord(
          [void Function(OrdercollectionRecordBuilder) updates]) =
      _$OrdercollectionRecord;

  static OrdercollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdercollectionRecordData({
  DocumentReference userInfo,
  int orderCount,
  String photoUrl,
  DocumentReference orderedItem,
  DateTime createdTimes,
  String orderName,
  int phoneNumber,
}) =>
    serializers.toFirestore(
        OrdercollectionRecord.serializer,
        OrdercollectionRecord((o) => o
          ..userInfo = userInfo
          ..orderCount = orderCount
          ..photoUrl = photoUrl
          ..orderedItem = orderedItem
          ..createdTimes = createdTimes
          ..orderName = orderName
          ..phoneNumber = phoneNumber));
