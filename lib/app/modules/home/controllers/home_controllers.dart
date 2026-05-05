import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeControllers extends GetxController{
  final TextEditingController searchController = TextEditingController();

  @override 
  void onClose(){
    searchController.dispose();
    super.onClose();
  }
}