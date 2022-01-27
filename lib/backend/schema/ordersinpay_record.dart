import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ordersinpay_record.g.dart';

abstract class OrdersinpayRecord
    implements Built<OrdersinpayRecord, OrdersinpayRecordBuilder> {
  static Serializer<OrdersinpayRecord> get serializer =>
      _$ordersinpayRecordSerializer;

  @nullable
  DocumentReference get productsinfopay;

  @nullable
  String get orderedname;

  @nullable
  int get orderedtelephone;

  @nullable
  DocumentReference get usersinorder;

  @nullable
  DocumentReference get orderpayproduct;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersinpayRecordBuilder builder) => builder
    ..orderedname = ''
    ..orderedtelephone = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordersinpay');

  static Stream<OrdersinpayRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdersinpayRecord._();
  factory OrdersinpayRecord([void Function(OrdersinpayRecordBuilder) updates]) =
      _$OrdersinpayRecord;

  static OrdersinpayRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersinpayRecordData({
  DocumentReference productsinfopay,
  String orderedname,
  int orderedtelephone,
  DocumentReference usersinorder,
  DocumentReference orderpayproduct,
}) =>
    serializers.toFirestore(
        OrdersinpayRecord.serializer,
        OrdersinpayRecord((o) => o
          ..productsinfopay = productsinfopay
          ..orderedname = orderedname
          ..orderedtelephone = orderedtelephone
          ..usersinorder = usersinorder
          ..orderpayproduct = orderpayproduct));
