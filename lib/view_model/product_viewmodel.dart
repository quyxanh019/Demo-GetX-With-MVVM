import 'package:demo_getx/models/category.dart';
import 'package:flutter/material.dart';
import 'package:demo_getx/models/product.dart';

class ProductViewModel {
  List<Product> products = [
    Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE),
      categoryId: 1,
    ),
    Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984),
      categoryId: 1,
    ),
    Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493),
      categoryId: 1,
    ),
    Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398),
      categoryId: 1,
    ),
    Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883),
      categoryId: 1,
    ),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
      categoryId: 1,
    ),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
      categoryId: 2,
    ),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
      categoryId: 3,
    ),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
      categoryId: 4,
    ),
  ];

  List<Product> getProductByCategory(Category category) {
    var listProducts = products.where((product) => product.categoryId == category.id).toList();
    return listProducts;
  }
}