import 'package:flutter_gBot/domain/repositories/product_repository.dart';

class DesactiveServiceScanUseCase {
  final ProductRepository productRepository;

  DesactiveServiceScanUseCase({
    this.productRepository,
  });

  Future<void> call() async {
    try {
      return await productRepository.desativeReaderService();
    } catch (_) {
      rethrow;
    }
  }
}
