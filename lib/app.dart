import 'package:flutter/material.dart';
import 'package:flutter_getx_example/controller/theme_controller.dart';
import 'package:flutter_getx_example/themes.dart';
import 'package:get/get.dart';
import 'screen/home_screen.dart';

class CounterAppWithGet extends StatelessWidget {
  CounterAppWithGet({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: GetDependencyBinder(),
      theme: themeController.isDarkMode? darkTheme : lightTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}

/// This is the Get dependency binder.
class GetDependencyBinder extends Bindings {
  /// Get dependency manager.
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}
