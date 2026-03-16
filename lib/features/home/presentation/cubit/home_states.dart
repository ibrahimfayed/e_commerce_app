import 'package:ecommerce/features/home/domain/entities/category.dart';

abstract class HomeStates {}

class HomeInitial extends HomeStates {}

class GetCategoriesLoading extends HomeStates {}

class GetCategoriesSuccess extends HomeStates {
  final List<Category> categories;
  GetCategoriesSuccess(this.categories);
}

class GetCategoriesError extends HomeStates {
  final String message;
  GetCategoriesError(this.message);
}
