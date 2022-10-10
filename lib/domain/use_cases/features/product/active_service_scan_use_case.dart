import 'package:flutter_gBot/domain/repositories/product_repository.dart';

class ActiveServiceScanUseCase {
  final ProductRepository productRepository;

  ActiveServiceScanUseCase({
    this.productRepository,
  });

  Future<String> call() async {
    try {
      return await productRepository.activeReaderService();
    } catch (_) {
      rethrow;
    }
  }
}
