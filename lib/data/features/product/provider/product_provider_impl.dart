import 'package:flutter/services.dart';

import 'package:flutter_gBot/domain/exceptions/product_exceptions.dart';
import 'package:flutter_gBot/infrastructure/features/product/repositories/contracts/product_provider.dart';

class ProductProviderImpl implements ProductProvider {
  final MethodChannel channelScan;

  ProductProviderImpl({
    this.channelScan,
  });

  @override
  Future<String> activeReaderService() async {
    bool serviceScan = true;
    while (serviceScan) {
      try {
        final _result = await channelScan.invokeMethod(
          'leitorCodigoBarra',
          <String, dynamic>{"acao": "ativar"},
        );
        String _resultScan;
        if (_result != null) {
          _resultScan = _result.toString();
        }
        return _resultScan;
      } catch (_) {}
    }
  }

  @override
  Future<void> desativeReaderService() async {
    try {
      await channelScan.invokeMethod(
        'leitorCodigoBarra',
        <String, dynamic>{"acao": "desativar"},
      );
    } catch (e) {
      print('**********ERRO ao parar serviço: $e');
      throw ProductErrorException('Strings.loginApiException');
    }
  }
}
