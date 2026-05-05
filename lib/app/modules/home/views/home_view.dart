import 'package:crud/app/modules/home/controllers/home_controllers.dart';
import 'package:crud/app/modules/home/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as controller;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});

   final HomeControllers controllers = Get.put(HomeControllers());
   
     @override
     Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: CustomAppbar(
        SearchController: controllers.searchController,
         onBack: ()=> Get.back(),
          onCartTap: (){}),
      body: Column(
        children: [
          
        ],
      ),
    );
     }
  }
