import 'package:get_it/get_it.dart';

import 'package:flutter_gBot/app/channel_factory.dart';
import 'package:flutter_gBot/data/features/product/provider/product_provider_impl.dart';
import 'package:flutter_gBot/domain/repositories/product_repository.dart';
import 'package:flutter_gBot/domain/use_cases/features/product/active_service_scan_use_case.dart';
import 'package:flutter_gBot/domain/use_cases/features/product/desactive_service_scan_use_case.dart';
import 'package:flutter_gBot/infrastructure/features/product/repositories/contracts/product_provider.dart';
import 'package:flutter_gBot/infrastructure/features/product/repositories/product_repository_impl.dart';
import 'package:flutter_gBot/presentation/features/product/mobx/product.store.dart';

final sl = GetIt.I;

void setupDependencies() {
  setupProvider();
  setupRepository();
  setupUseCase();
  setupMobx();
}

void setupProvider() {
  sl.registerLazySingleton<ProductProvider>(
    () => ProductProviderImpl(
      channelScan: ChannelFactory.baseChannelBarcode,
    ),
  );
}

void setupRepository() {
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(
      productProvider: sl<ProductProvider>(),
    ),
  );
}

void setupUseCase() {
  sl.registerLazySingleton<ActiveServiceScanUseCase>(
    () => ActiveServiceScanUseCase(
      productRepository: sl<ProductRepository>(),
    ),
  );

  sl.registerLazySingleton<DesactiveServiceScanUseCase>(
    () => DesactiveServiceScanUseCase(
      productRepository: sl<ProductRepository>(),
    ),
  );
}

setupMobx() {
  sl.registerLazySingleton<ProductStore>(
    () => ProductStore(
      activeServiceScanUseCase: sl<ActiveServiceScanUseCase>(),
      desactiveServiceScanUseCase: sl<DesactiveServiceScanUseCase>(),
    ),
  );
}
