import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud/app/modules/home/views/home_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}