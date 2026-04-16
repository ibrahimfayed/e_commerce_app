import 'package:ecommerce/features/products/data/models/product_model.dart';
import 'package:ecommerce/features/products/domain/entities/product.dart';

extension ProductsMappers on ProductModel {
  Product get toEntity => Product(
    sold: sold,
    imagesUrls: imagesUrls,
    ratingsQuantity: ratingsQuantity,
    id: id,
    title: title,
    description: description,
    quantity: quantity,
    price: price,
    imageCoverUrl: imageCoverUrl,
    ratingsAverage: ratingsAverage,
    priceAfterDiscount: priceAfterDiscount,
  );
}
