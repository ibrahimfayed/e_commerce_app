import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/error/exceptions.dart';
import 'package:ecommerce/features/cart/data/data_sources/remote/cart_remote_data_source.dart';
import 'package:ecommerce/features/cart/data/models/cart_response.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final Dio _dio;
  const CartRemoteDataSourceImpl(this._dio);
  @override
  Future<void> addProduct(String productId) async {
    try {
      await _dio.post(
        APIConstants.cartEndpoint,
        data: {'productId': productId},
      );
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed To Add Product To Cart');
    }
  }

  @override
  Future<CartResponse> getCart() async {
    try {
      final response = await _dio.get(APIConstants.cartEndpoint);
      return CartResponse.fromJson(response.data);
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed To Get products from Cart');
    }
  }

  @override
  Future<CartResponse> removeProduct(String productId) async {
    try {
      final response = await _dio.delete(
        '${APIConstants.cartEndpoint}/$productId',
      );
      return CartResponse.fromJson(response.data);
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed To delete Products from cart');
    }
  }

  @override
  Future<CartResponse> updateProduct(String productId, int quantity) async {
    try {
      final response = await _dio.put(
        '${APIConstants.cartEndpoint}/$productId',
        data: {'count': quantity},
      );
      return CartResponse.fromJson(response.data);
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed To update Products');
    }
  }
}
