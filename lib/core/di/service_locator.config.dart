// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:ecommerce/core/di/register_module.dart' as _i709;
import 'package:ecommerce/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i395;
import 'package:ecommerce/features/auth/data/data_sources/local/auth_shared_pref_local_data_source.dart'
    as _i258;
import 'package:ecommerce/features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i385;
import 'package:ecommerce/features/auth/data/data_sources/remote/auth_remote_data_source_impl.dart'
    as _i274;
import 'package:ecommerce/features/auth/data/repository/auth_repository_impl.dart'
    as _i638;
import 'package:ecommerce/features/auth/domain/repositories/auth_repository.dart'
    as _i33;
import 'package:ecommerce/features/auth/domain/use_cases/login.dart' as _i658;
import 'package:ecommerce/features/auth/domain/use_cases/register.dart'
    as _i696;
import 'package:ecommerce/features/auth/presentation/cubit/auth_cubit.dart'
    as _i350;
import 'package:ecommerce/features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i328;
import 'package:ecommerce/features/cart/data/data_sources/remote/cart_remote_data_source_impl.dart'
    as _i650;
import 'package:ecommerce/features/cart/data/repository/cart_repository_impl.dart'
    as _i1050;
import 'package:ecommerce/features/cart/domain/repositories/cart_repository.dart'
    as _i487;
import 'package:ecommerce/features/cart/domain/use_cases/add_product_to_cart.dart'
    as _i603;
import 'package:ecommerce/features/cart/domain/use_cases/get_cart.dart'
    as _i514;
import 'package:ecommerce/features/cart/domain/use_cases/remove_product_from_cart.dart'
    as _i13;
import 'package:ecommerce/features/cart/domain/use_cases/update_product_quantity.dart'
    as _i686;
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit.dart'
    as _i769;
import 'package:ecommerce/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i329;
import 'package:ecommerce/features/home/data/data_sources/remote/home_remote_data_source_impl.dart'
    as _i529;
import 'package:ecommerce/features/home/data/repositories/home_repository_impl.dart'
    as _i1028;
import 'package:ecommerce/features/home/domain/repository/home_repository.dart'
    as _i142;
import 'package:ecommerce/features/home/domain/use_cases/get_categories.dart'
    as _i533;
import 'package:ecommerce/features/home/presentation/cubit/home_cubit.dart'
    as _i669;
import 'package:ecommerce/features/products/data/data_sources/remote/products_remote_data_source.dart'
    as _i738;
import 'package:ecommerce/features/products/data/data_sources/remote/products_remote_data_source_impl.dart'
    as _i1010;
import 'package:ecommerce/features/products/data/repositories/products_repository_impl.dart'
    as _i969;
import 'package:ecommerce/features/products/domain/repository/products_repository.dart'
    as _i647;
import 'package:ecommerce/features/products/domain/use_cases/get_products.dart'
    as _i551;
import 'package:ecommerce/features/products/presentation/cubit/products_cubit.dart'
    as _i382;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPref,
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i385.AuthRemoteDataSource>(
      () => _i274.AuthRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.singleton<_i738.ProductsRemoteDataSource>(
      () => _i1010.ProductsRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.singleton<_i395.AuthLocalDataSource>(
      () => _i258.AuthSharedPrefLocalDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i328.CartRemoteDataSource>(
      () => _i650.CartRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i329.HomeRemoteDataSource>(
      () => _i529.HomeRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i487.CartRepository>(
      () => _i1050.CartRepositoryImpl(gh<_i328.CartRemoteDataSource>()),
    );
    gh.singleton<_i33.AuthRepository>(
      () => _i638.AuthRepositoryImpl(
        gh<_i385.AuthRemoteDataSource>(),
        gh<_i395.AuthLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i647.ProductsRepository>(
      () => _i969.ProductsRepositoryImpl(gh<_i738.ProductsRemoteDataSource>()),
    );
    gh.lazySingleton<_i142.HomeRepository>(
      () => _i1028.HomeRepositoryImpl(gh<_i329.HomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i603.AddProductToCart>(
      () => _i603.AddProductToCart(gh<_i487.CartRepository>()),
    );
    gh.lazySingleton<_i514.GetCart>(
      () => _i514.GetCart(gh<_i487.CartRepository>()),
    );
    gh.lazySingleton<_i13.RemoveProductFromCart>(
      () => _i13.RemoveProductFromCart(gh<_i487.CartRepository>()),
    );
    gh.lazySingleton<_i686.UpdateProductQuantity>(
      () => _i686.UpdateProductQuantity(gh<_i487.CartRepository>()),
    );
    gh.lazySingleton<_i769.CartCubit>(
      () => _i769.CartCubit(
        gh<_i603.AddProductToCart>(),
        gh<_i514.GetCart>(),
        gh<_i686.UpdateProductQuantity>(),
        gh<_i13.RemoveProductFromCart>(),
      ),
    );
    gh.lazySingleton<_i551.GetProducts>(
      () => _i551.GetProducts(gh<_i647.ProductsRepository>()),
    );
    gh.singleton<_i658.Login>(() => _i658.Login(gh<_i33.AuthRepository>()));
    gh.singleton<_i696.Register>(
      () => _i696.Register(gh<_i33.AuthRepository>()),
    );
    gh.singleton<_i350.AuthCubit>(
      () => _i350.AuthCubit(gh<_i658.Login>(), gh<_i696.Register>()),
    );
    gh.factory<_i382.ProductsCubit>(
      () => _i382.ProductsCubit(gh<_i551.GetProducts>()),
    );
    gh.lazySingleton<_i533.GetCategories>(
      () => _i533.GetCategories(gh<_i142.HomeRepository>()),
    );
    gh.lazySingleton<_i669.HomeCubit>(
      () => _i669.HomeCubit(gh<_i533.GetCategories>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i709.RegisterModule {}
