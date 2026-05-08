
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final TextEditingController searchController;
  final VoidCallback onBack;
  final VoidCallback onCartTap;

  const CustomAppbar({
    super.key,
    required this.searchController,
    required this.onBack,
    required this.onCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 140, 187, 211),
      leading: IconButton(
        onPressed: onBack,
        icon: const Icon(Icons.arrow_back),
      ),
      title: TextField(
        controller: searchController,
        decoration: const InputDecoration(
          hintText: 'Search Products',
          border: InputBorder.none,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onCartTap,
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}