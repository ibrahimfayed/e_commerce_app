import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:ecommerce/features/home/data/mappers/category_mapper.dart';
import 'package:ecommerce/features/home/domain/entities/category.dart';
import 'package:ecommerce/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;
  HomeRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final respose = await _remoteDataSource.getCategories();
      final categories = respose.categories
          .map((categoryModel) => categoryModel.toEntity)
          .toList();
      return Right(categories);
    } catch (exception) {
      return Left(Failure(exception.toString()));
    }
  }
}
