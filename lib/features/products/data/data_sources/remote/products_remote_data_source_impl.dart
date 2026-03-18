import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/error/exceptions.dart';
import 'package:ecommerce/features/products/data/data_sources/remote/products_remote_data_source.dart';
import 'package:ecommerce/features/products/data/models/products_response.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProductsRemoteDataSource)
class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final Dio _dio;
  const ProductsRemoteDataSourceImpl(this._dio);

  @override
  Future<ProductsResponse> getProducts({String? categoryId}) async {
    try {
      final respose = await _dio.get(
        APIConstants.productsEndpoint,
        queryParameters: categoryId == null ? null : {'category': categoryId},
      );
      return ProductsResponse.fromJson(respose.data);
    } catch (exception) {
      print(exception);
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed To get Products');
    }
  }
}
