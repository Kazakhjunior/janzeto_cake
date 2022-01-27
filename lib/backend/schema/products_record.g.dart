// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.prodId;
    if (value != null) {
      result
        ..add('prod_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodName;
    if (value != null) {
      result
        ..add('prod_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodPrice;
    if (value != null) {
      result
        ..add('prod_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prodWeight;
    if (value != null) {
      result
        ..add('prod_weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodImage;
    if (value != null) {
      result
        ..add('prod_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodinfoImage;
    if (value != null) {
      result
        ..add('prodinfo_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.productinfo;
    if (value != null) {
      result
        ..add('productinfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'prod_id':
          result.prodId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_name':
          result.prodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_price':
          result.prodPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prod_weight':
          result.prodWeight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_image':
          result.prodImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prodinfo_image':
          result.prodinfoImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productinfo':
          result.productinfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductsRecord extends ProductsRecord {
  @override
  final String prodId;
  @override
  final String prodName;
  @override
  final int prodPrice;
  @override
  final String prodWeight;
  @override
  final String prodImage;
  @override
  final String prodinfoImage;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final int limit;
  @override
  final String productinfo;
  @override
  final DocumentReference reference;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder) updates]) =>
      (new ProductsRecordBuilder()..update(updates)).build();

  _$ProductsRecord._(
      {this.prodId,
      this.prodName,
      this.prodPrice,
      this.prodWeight,
      this.prodImage,
      this.prodinfoImage,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.limit,
      this.productinfo,
      this.reference})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        prodId == other.prodId &&
        prodName == other.prodName &&
        prodPrice == other.prodPrice &&
        prodWeight == other.prodWeight &&
        prodImage == other.prodImage &&
        prodinfoImage == other.prodinfoImage &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        limit == other.limit &&
        productinfo == other.productinfo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                prodId
                                                                    .hashCode),
                                                            prodName.hashCode),
                                                        prodPrice.hashCode),
                                                    prodWeight.hashCode),
                                                prodImage.hashCode),
                                            prodinfoImage.hashCode),
                                        email.hashCode),
                                    displayName.hashCode),
                                photoUrl.hashCode),
                            uid.hashCode),
                        createdTime.hashCode),
                    phoneNumber.hashCode),
                limit.hashCode),
            productinfo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsRecord')
          ..add('prodId', prodId)
          ..add('prodName', prodName)
          ..add('prodPrice', prodPrice)
          ..add('prodWeight', prodWeight)
          ..add('prodImage', prodImage)
          ..add('prodinfoImage', prodinfoImage)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('limit', limit)
          ..add('productinfo', productinfo)
          ..add('reference', reference))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord _$v;

  String _prodId;
  String get prodId => _$this._prodId;
  set prodId(String prodId) => _$this._prodId = prodId;

  String _prodName;
  String get prodName => _$this._prodName;
  set prodName(String prodName) => _$this._prodName = prodName;

  int _prodPrice;
  int get prodPrice => _$this._prodPrice;
  set prodPrice(int prodPrice) => _$this._prodPrice = prodPrice;

  String _prodWeight;
  String get prodWeight => _$this._prodWeight;
  set prodWeight(String prodWeight) => _$this._prodWeight = prodWeight;

  String _prodImage;
  String get prodImage => _$this._prodImage;
  set prodImage(String prodImage) => _$this._prodImage = prodImage;

  String _prodinfoImage;
  String get prodinfoImage => _$this._prodinfoImage;
  set prodinfoImage(String prodinfoImage) =>
      _$this._prodinfoImage = prodinfoImage;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  String _productinfo;
  String get productinfo => _$this._productinfo;
  set productinfo(String productinfo) => _$this._productinfo = productinfo;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prodId = $v.prodId;
      _prodName = $v.prodName;
      _prodPrice = $v.prodPrice;
      _prodWeight = $v.prodWeight;
      _prodImage = $v.prodImage;
      _prodinfoImage = $v.prodinfoImage;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _limit = $v.limit;
      _productinfo = $v.productinfo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsRecord build() {
    final _$result = _$v ??
        new _$ProductsRecord._(
            prodId: prodId,
            prodName: prodName,
            prodPrice: prodPrice,
            prodWeight: prodWeight,
            prodImage: prodImage,
            prodinfoImage: prodinfoImage,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            limit: limit,
            productinfo: productinfo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
