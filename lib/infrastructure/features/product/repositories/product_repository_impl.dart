import 'package:flutter_gBot/domain/repositories/product_repository.dart';
import 'package:flutter_gBot/infrastructure/features/product/repositories/contracts/product_provider.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductProvider productProvider;

  ProductRepositoryImpl({
    this.productProvider,
  });

  @override
  Future<String> activeReaderService() async {
    try {
      return await productProvider.activeReaderService();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> desativeReaderService() async {
    try {
      return await productProvider.desativeReaderService();
    } catch (_) {
      rethrow;
    }
  }
}
