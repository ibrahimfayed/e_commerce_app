import 'package:equatable/equatable.dart';
class Product extends Equatable{
  final int sold;
  final List<String> imagesUrls;
  final int ratingsQuantity;
  final String id;
  final String title;
  final String description;
  final int quantity;
  final int price;
  final String imageCoverUrl;
  final double ratingsAverage;
  final int? priceAfterDiscount;

  const Product({
    required this.sold,
    required this.imagesUrls,
    required this.ratingsQuantity,
    required this.id,
    required this.title,
    required this.description,
    required this.quantity,
    required this.price,
    required this.imageCoverUrl, 
    required this.ratingsAverage,
    this.priceAfterDiscount,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [id];
}