import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_presensi/app/modules/home/model/model_menu.dart';

class HomeController extends GetxController {
  TextEditingController searchText = TextEditingController();

  void logout() {}

  List<ModelMenu> menuData = [
    ModelMenu(color: Color(0xFFDCEDF9), icon: Icons.home),
    ModelMenu(color: Color(0xFFDCEDF9), icon: Icons.home),
    ModelMenu(color: Color(0xFFDCEDF9), icon: Icons.home),
    ModelMenu(color: Color(0xFFDCEDF9), icon: Icons.home),
  ];
}
