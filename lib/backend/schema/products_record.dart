import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'prod_id')
  String get prodId;

  @nullable
  @BuiltValueField(wireName: 'prod_name')
  String get prodName;

  @nullable
  @BuiltValueField(wireName: 'prod_price')
  int get prodPrice;

  @nullable
  @BuiltValueField(wireName: 'prod_weight')
  String get prodWeight;

  @nullable
  @BuiltValueField(wireName: 'prod_image')
  String get prodImage;

  @nullable
  @BuiltValueField(wireName: 'prodinfo_image')
  String get prodinfoImage;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  int get limit;

  @nullable
  String get productinfo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..prodId = ''
    ..prodName = ''
    ..prodPrice = 0
    ..prodWeight = ''
    ..prodImage = ''
    ..prodinfoImage = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..limit = 0
    ..productinfo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductsRecordData({
  String prodId,
  String prodName,
  int prodPrice,
  String prodWeight,
  String prodImage,
  String prodinfoImage,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  int limit,
  String productinfo,
}) =>
    serializers.toFirestore(
        ProductsRecord.serializer,
        ProductsRecord((p) => p
          ..prodId = prodId
          ..prodName = prodName
          ..prodPrice = prodPrice
          ..prodWeight = prodWeight
          ..prodImage = prodImage
          ..prodinfoImage = prodinfoImage
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..limit = limit
          ..productinfo = productinfo));
