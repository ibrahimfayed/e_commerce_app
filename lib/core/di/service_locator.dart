import 'service_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final serviceLocator = GetIt.instance;

@injectableInit
Future<void> configureDependancies() => serviceLocator.init();
// serviceLocator.registerFactory<AuthRemoteDataSource>(
//   () => AuthRemoteDataSourceImpl(),
// );
// serviceLocator.registerLazySingleton<AuthRemoteDataSource>(
//   () => AuthRemoteDataSourceImpl(),
// );
// serviceLocator.registerSingleton<AuthRemoteDataSource>(
//   AuthRemoteDataSourceImpl()
// );
