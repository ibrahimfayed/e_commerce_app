class CategoryModel {
  final String id;
  final String name;
  final String slug;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['_id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    imageUrl: json['image'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}
