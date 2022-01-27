// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordercollection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdercollectionRecord> _$ordercollectionRecordSerializer =
    new _$OrdercollectionRecordSerializer();

class _$OrdercollectionRecordSerializer
    implements StructuredSerializer<OrdercollectionRecord> {
  @override
  final Iterable<Type> types = const [
    OrdercollectionRecord,
    _$OrdercollectionRecord
  ];
  @override
  final String wireName = 'OrdercollectionRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrdercollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userInfo;
    if (value != null) {
      result
        ..add('user_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.orderCount;
    if (value != null) {
      result
        ..add('order_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderedItem;
    if (value != null) {
      result
        ..add('ordered_item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.createdTimes;
    if (value != null) {
      result
        ..add('created_times')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderName;
    if (value != null) {
      result
        ..add('order_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  OrdercollectionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdercollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_info':
          result.userInfo = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'order_count':
          result.orderCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ordered_item':
          result.orderedItem = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'created_times':
          result.createdTimes = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'order_name':
          result.orderName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$OrdercollectionRecord extends OrdercollectionRecord {
  @override
  final DocumentReference userInfo;
  @override
  final int orderCount;
  @override
  final String photoUrl;
  @override
  final DocumentReference orderedItem;
  @override
  final DateTime createdTimes;
  @override
  final String orderName;
  @override
  final int phoneNumber;
  @override
  final DocumentReference reference;

  factory _$OrdercollectionRecord(
          [void Function(OrdercollectionRecordBuilder) updates]) =>
      (new OrdercollectionRecordBuilder()..update(updates)).build();

  _$OrdercollectionRecord._(
      {this.userInfo,
      this.orderCount,
      this.photoUrl,
      this.orderedItem,
      this.createdTimes,
      this.orderName,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  OrdercollectionRecord rebuild(
          void Function(OrdercollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdercollectionRecordBuilder toBuilder() =>
      new OrdercollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdercollectionRecord &&
        userInfo == other.userInfo &&
        orderCount == other.orderCount &&
        photoUrl == other.photoUrl &&
        orderedItem == other.orderedItem &&
        createdTimes == other.createdTimes &&
        orderName == other.orderName &&
        phoneNumber == other.phoneNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, userInfo.hashCode), orderCount.hashCode),
                            photoUrl.hashCode),
                        orderedItem.hashCode),
                    createdTimes.hashCode),
                orderName.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdercollectionRecord')
          ..add('userInfo', userInfo)
          ..add('orderCount', orderCount)
          ..add('photoUrl', photoUrl)
          ..add('orderedItem', orderedItem)
          ..add('createdTimes', createdTimes)
          ..add('orderName', orderName)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class OrdercollectionRecordBuilder
    implements Builder<OrdercollectionRecord, OrdercollectionRecordBuilder> {
  _$OrdercollectionRecord _$v;

  DocumentReference _userInfo;
  DocumentReference get userInfo => _$this._userInfo;
  set userInfo(DocumentReference userInfo) => _$this._userInfo = userInfo;

  int _orderCount;
  int get orderCount => _$this._orderCount;
  set orderCount(int orderCount) => _$this._orderCount = orderCount;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference _orderedItem;
  DocumentReference get orderedItem => _$this._orderedItem;
  set orderedItem(DocumentReference orderedItem) =>
      _$this._orderedItem = orderedItem;

  DateTime _createdTimes;
  DateTime get createdTimes => _$this._createdTimes;
  set createdTimes(DateTime createdTimes) =>
      _$this._createdTimes = createdTimes;

  String _orderName;
  String get orderName => _$this._orderName;
  set orderName(String orderName) => _$this._orderName = orderName;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  OrdercollectionRecordBuilder() {
    OrdercollectionRecord._initializeBuilder(this);
  }

  OrdercollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userInfo = $v.userInfo;
      _orderCount = $v.orderCount;
      _photoUrl = $v.photoUrl;
      _orderedItem = $v.orderedItem;
      _createdTimes = $v.createdTimes;
      _orderName = $v.orderName;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdercollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdercollectionRecord;
  }

  @override
  void update(void Function(OrdercollectionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdercollectionRecord build() {
    final _$result = _$v ??
        new _$OrdercollectionRecord._(
            userInfo: userInfo,
            orderCount: orderCount,
            photoUrl: photoUrl,
            orderedItem: orderedItem,
            createdTimes: createdTimes,
            orderName: orderName,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
