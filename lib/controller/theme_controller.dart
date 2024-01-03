import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  @override
  void onInit() {
    super.onInit();
    _isDarkMode = _box.read(_key) ?? false;
    update();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _box.write(_key, _isDarkMode);
    _isDarkMode ? Get.changeTheme(ThemeData.dark()) : Get.changeTheme(ThemeData.light());
    update();
  }
}