import 'package:mobx/mobx.dart';

import 'package:flutter_gBot/app/channel_factory.dart';
import 'package:flutter_gBot/domain/use_cases/features/product/active_service_scan_use_case.dart';
import 'package:flutter_gBot/domain/use_cases/features/product/desactive_service_scan_use_case.dart';

part 'product.store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  final ActiveServiceScanUseCase activeServiceScanUseCase;
  final DesactiveServiceScanUseCase desactiveServiceScanUseCase;

  _ProductStoreBase({
    this.activeServiceScanUseCase,
    this.desactiveServiceScanUseCase,
  });

  @observable
  bool isLoading = false;

  @observable
  bool serviceScan = false;

  @action
  void setServiceScan(bool value) => serviceScan = value;

  @observable
  List<String> scanListResult = [];

  @observable
  bool isScanResultActive = false;

  Future<void> activeServiceScan() async {
    print('******ativando serviço');
    if (serviceScan) return;

    serviceScan = true;
    while (serviceScan) {
      try {
        var _result = await ChannelFactory.baseChannelBarcode.invokeMethod(
          'leitorCodigoBarra',
          <String, dynamic>{"acao": "ativar"},
        );

        final _isHttp = _result.toString().contains('http');

        if (_result != null && _result.toString() != '' && !_isHttp) {
          print('*****result scanner: $_result');
          setServiceScan(false);
          scanListResult.insert(0, _result);
          isScanResultActive = true;
          setServiceScan(true);
        } else {
          isScanResultActive = false;
        }
      } catch (e) {
        isScanResultActive = false;
        serviceScan = false;
        print('*****Erro catch start service barcode: $e');

        await desactiveServiceScan();
        await desactiveServiceScan();
        await Future.delayed(const Duration(seconds: 2));
        activeServiceScan();
      }
    }
  }

  @action
  Future<void> desactiveServiceScan() async {
    scanListResult = [];
    serviceScan = false;
    setServiceScan(false);
    try {
      desactiveServiceScanUseCase.call();
      desactiveServiceScanUseCase.call();
    } catch (e) {
      print('***Erro ao parar serviço scan: $e');
    }
  }
}
