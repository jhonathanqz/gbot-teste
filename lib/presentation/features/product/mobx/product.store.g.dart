// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductStore on _ProductStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_ProductStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$serviceScanAtom = Atom(name: '_ProductStoreBase.serviceScan');

  @override
  bool get serviceScan {
    _$serviceScanAtom.reportRead();
    return super.serviceScan;
  }

  @override
  set serviceScan(bool value) {
    _$serviceScanAtom.reportWrite(value, super.serviceScan, () {
      super.serviceScan = value;
    });
  }

  final _$scanListResultAtom = Atom(name: '_ProductStoreBase.scanListResult');

  @override
  List<String> get scanListResult {
    _$scanListResultAtom.reportRead();
    return super.scanListResult;
  }

  @override
  set scanListResult(List<String> value) {
    _$scanListResultAtom.reportWrite(value, super.scanListResult, () {
      super.scanListResult = value;
    });
  }

  final _$isScanResultActiveAtom =
      Atom(name: '_ProductStoreBase.isScanResultActive');

  @override
  bool get isScanResultActive {
    _$isScanResultActiveAtom.reportRead();
    return super.isScanResultActive;
  }

  @override
  set isScanResultActive(bool value) {
    _$isScanResultActiveAtom.reportWrite(value, super.isScanResultActive, () {
      super.isScanResultActive = value;
    });
  }

  final _$desactiveServiceScanAsyncAction =
      AsyncAction('_ProductStoreBase.desactiveServiceScan');

  @override
  Future<void> desactiveServiceScan() {
    return _$desactiveServiceScanAsyncAction
        .run(() => super.desactiveServiceScan());
  }

  final _$_ProductStoreBaseActionController =
      ActionController(name: '_ProductStoreBase');

  @override
  void setServiceScan(bool value) {
    final _$actionInfo = _$_ProductStoreBaseActionController.startAction(
        name: '_ProductStoreBase.setServiceScan');
    try {
      return super.setServiceScan(value);
    } finally {
      _$_ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
serviceScan: ${serviceScan},
scanListResult: ${scanListResult},
isScanResultActive: ${isScanResultActive}
    ''';
  }
}
