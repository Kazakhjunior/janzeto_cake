// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordersinpay_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersinpayRecord> _$ordersinpayRecordSerializer =
    new _$OrdersinpayRecordSerializer();

class _$OrdersinpayRecordSerializer
    implements StructuredSerializer<OrdersinpayRecord> {
  @override
  final Iterable<Type> types = const [OrdersinpayRecord, _$OrdersinpayRecord];
  @override
  final String wireName = 'OrdersinpayRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrdersinpayRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.productsinfopay;
    if (value != null) {
      result
        ..add('productsinfopay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.orderedname;
    if (value != null) {
      result
        ..add('orderedname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderedtelephone;
    if (value != null) {
      result
        ..add('orderedtelephone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usersinorder;
    if (value != null) {
      result
        ..add('usersinorder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.orderpayproduct;
    if (value != null) {
      result
        ..add('orderpayproduct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
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
  OrdersinpayRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersinpayRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'productsinfopay':
          result.productsinfopay = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'orderedname':
          result.orderedname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderedtelephone':
          result.orderedtelephone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'usersinorder':
          result.usersinorder = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'orderpayproduct':
          result.orderpayproduct = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
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

class _$OrdersinpayRecord extends OrdersinpayRecord {
  @override
  final DocumentReference productsinfopay;
  @override
  final String orderedname;
  @override
  final int orderedtelephone;
  @override
  final DocumentReference usersinorder;
  @override
  final DocumentReference orderpayproduct;
  @override
  final DocumentReference reference;

  factory _$OrdersinpayRecord(
          [void Function(OrdersinpayRecordBuilder) updates]) =>
      (new OrdersinpayRecordBuilder()..update(updates)).build();

  _$OrdersinpayRecord._(
      {this.productsinfopay,
      this.orderedname,
      this.orderedtelephone,
      this.usersinorder,
      this.orderpayproduct,
      this.reference})
      : super._();

  @override
  OrdersinpayRecord rebuild(void Function(OrdersinpayRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersinpayRecordBuilder toBuilder() =>
      new OrdersinpayRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersinpayRecord &&
        productsinfopay == other.productsinfopay &&
        orderedname == other.orderedname &&
        orderedtelephone == other.orderedtelephone &&
        usersinorder == other.usersinorder &&
        orderpayproduct == other.orderpayproduct &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, productsinfopay.hashCode), orderedname.hashCode),
                    orderedtelephone.hashCode),
                usersinorder.hashCode),
            orderpayproduct.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdersinpayRecord')
          ..add('productsinfopay', productsinfopay)
          ..add('orderedname', orderedname)
          ..add('orderedtelephone', orderedtelephone)
          ..add('usersinorder', usersinorder)
          ..add('orderpayproduct', orderpayproduct)
          ..add('reference', reference))
        .toString();
  }
}

class OrdersinpayRecordBuilder
    implements Builder<OrdersinpayRecord, OrdersinpayRecordBuilder> {
  _$OrdersinpayRecord _$v;

  DocumentReference _productsinfopay;
  DocumentReference get productsinfopay => _$this._productsinfopay;
  set productsinfopay(DocumentReference productsinfopay) =>
      _$this._productsinfopay = productsinfopay;

  String _orderedname;
  String get orderedname => _$this._orderedname;
  set orderedname(String orderedname) => _$this._orderedname = orderedname;

  int _orderedtelephone;
  int get orderedtelephone => _$this._orderedtelephone;
  set orderedtelephone(int orderedtelephone) =>
      _$this._orderedtelephone = orderedtelephone;

  DocumentReference _usersinorder;
  DocumentReference get usersinorder => _$this._usersinorder;
  set usersinorder(DocumentReference usersinorder) =>
      _$this._usersinorder = usersinorder;

  DocumentReference _orderpayproduct;
  DocumentReference get orderpayproduct => _$this._orderpayproduct;
  set orderpayproduct(DocumentReference orderpayproduct) =>
      _$this._orderpayproduct = orderpayproduct;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  OrdersinpayRecordBuilder() {
    OrdersinpayRecord._initializeBuilder(this);
  }

  OrdersinpayRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productsinfopay = $v.productsinfopay;
      _orderedname = $v.orderedname;
      _orderedtelephone = $v.orderedtelephone;
      _usersinorder = $v.usersinorder;
      _orderpayproduct = $v.orderpayproduct;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersinpayRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersinpayRecord;
  }

  @override
  void update(void Function(OrdersinpayRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdersinpayRecord build() {
    final _$result = _$v ??
        new _$OrdersinpayRecord._(
            productsinfopay: productsinfopay,
            orderedname: orderedname,
            orderedtelephone: orderedtelephone,
            usersinorder: usersinorder,
            orderpayproduct: orderpayproduct,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
