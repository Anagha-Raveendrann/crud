

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  final TextEditingController SearchController;
  final VoidCallback onBack;
  final VoidCallback onCartTap;

  const CustomAppbar({
    super.key,
     required this.SearchController,
     required this.onBack,
     required this.onCartTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 176, 206, 230),
      leading: IconButton(
        onPressed: onBack,
         icon: Icon(Icons.arrow_back
         )),
         title: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            controller: SearchController,
            decoration: InputDecoration(
              hintText: "Search Products",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12)
            ),
          ),
         ),
         actions: [
          Stack(
            children: [
              IconButton(onPressed: onCartTap, icon: Icon(Icons.shopping_cart_outlined),
              
              ),
              Positioned(
                right: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  
                ))
            ],
          )
         ],
        
         
    );
  }
  
  @override
  
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}