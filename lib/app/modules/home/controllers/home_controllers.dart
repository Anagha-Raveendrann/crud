import 'package:crud/app/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeControllers extends GetxController {
  // AppBar search controller
  final TextEditingController searchController = TextEditingController();

  // Search value
  var searchText = ''.obs;

  // Selected filter
  var selectedFilter = 'Sort'.obs;

  // Filter list
  final List<String> filterList = [
    'Sort',
    'Filter',
    'Early Bird Deals',
    'High Quality',
    'Fabric',
    'Size',
    'Pattern',
    'Delivery in 1 Day',
    'Customer Rating',
    'Deals',
  ];

  // Product list
  var productList = <ProductModel>[
    ProductModel(
      image: 'assets/GULAK_RHI.jpg',
      title: 'Youthnic',
      description: 'Women Cotton Silk Kurta Pant Set',
      price: '₹636',
      rating: 4.2,
    ),
    ProductModel(
      image: 'assets/GULAK_RHI.jpg',
      title: 'Youthnic',
      description: 'Women Cotton Silk Kurta Pant Set',
      price: '₹636',
      rating: 4.2,
    ),
    ProductModel(
      image: 'assets/GULAK_RHI.jpg',
      title: 'Youthnic',
      description: 'Women Cotton Silk Kurta Pant Set',
      price: '₹636',
      rating: 4.2,
    ),
    ProductModel(
      image: 'assets/GULAK_RHI.jpg',
      title: 'Youthnic',
      description: 'Women Cotton Silk Kurta Pant Set',
      price: '₹636',
      rating: 4.2,
    ),
    
  ].obs;

  // Wishlist list
  var wishlistItems = <ProductModel>[].obs;

  // Search update
  void updateSearch(String value) {
    searchText.value = value;
  }

  // Filter change
  void changeFilter(String filter) {
    selectedFilter.value = filter;
  }

  // Wishlist toggle
 void toggleWishlist(ProductModel product) {
  product.isFavorite = !product.isFavorite;

  if (product.isFavorite) {
    if (!wishlistItems.contains(product)) {
      wishlistItems.add(product);
    }
  } else {
    wishlistItems.remove(product);
  }

  productList.refresh();
  wishlistItems.refresh();
}

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}