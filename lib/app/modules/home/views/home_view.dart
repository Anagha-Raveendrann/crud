import 'package:crud/app/modules/home/controllers/home_controllers.dart';
import 'package:crud/app/modules/home/widgets/custom_appbar.dart';
import 'package:crud/app/modules/home/widgets/filter_chips_section.dart';
import 'package:crud/app/modules/home/widgets/product_grid_section.dart';
import 'package:crud/app/modules/wishlist/views/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeControllers controllers = Get.put(HomeControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueAccent,
      appBar: CustomAppbar(
  searchController: controllers.searchController,
  
  onBack: () => Get.back(),
  onCartTap: () {
    Get.to(()=>WishlistView());
  },
),
      body: Column(
        children: [
          // Filter Chips
          Obx(
            () => FilterChipsSection(
              filters: controllers.filterList,
              selectedFilter: controllers.selectedFilter.value,
              onSelected: (value) {
                controllers.changeFilter(value);
              },
            ),
          ),

          // Product Grid
          Expanded(
            child: Obx(
              () => ProductGridSection(
                products: controllers.productList.toList(),
                onWishlistTap: (product) {
                  controllers.toggleWishlist(product);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}