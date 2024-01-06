import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/home_screen.dart';

class CounterAppWithGet extends StatelessWidget {
  CounterAppWithGet({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: GetDependencyBinder(),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

/// This is the Get dependency binder.
class GetDependencyBinder extends Bindings {
  /// Get dependency manager.
  @override
  void dependencies() {

  }
}
