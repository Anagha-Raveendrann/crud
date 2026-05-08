import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud/app/modules/home/controllers/home_controllers.dart';

class WishlistView extends StatelessWidget {
  WishlistView({super.key});

  final HomeControllers controllers = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: Obx(
        () {
          if (controllers.wishlistItems.isEmpty) {
            return const Center(
              child: Text('No Wishlist Items'),
            );
          }

          return ListView.builder(
            itemCount: controllers.wishlistItems.length,
            itemBuilder: (context, index) {
              final product = controllers.wishlistItems[index];

              return Card(
                child: ListTile(
                  leading: Image.asset(
                    product.image,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(product.title),
                  subtitle: Text(product.price),
                ),
              );
            },
          );
        },
      ),
    );
  }
}