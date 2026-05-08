import 'package:flutter/material.dart';
import 'package:crud/app/data/models/product_model.dart';

class ProductGridSection extends StatelessWidget {
  final List<ProductModel> products;
  final Function(ProductModel) onWishlistTap;

  const ProductGridSection({
    super.key,
    required this.products,
    required this.onWishlistTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.58,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final product = products[index];

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    Text(product.rating.toString()),
                    const SizedBox(width: 4),
                    const Icon(Icons.star, size: 16),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8),

                Text(
                  product.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      onWishlistTap(product);
                    },
                    icon: Icon(
                      product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}