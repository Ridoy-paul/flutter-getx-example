import 'package:flutter/material.dart';
import 'screen/screen_one.dart';
import 'screen/screen_two.dart';
import 'package:get/get.dart';
import 'screen/home_screen.dart';

class CounterAppWithGet extends StatelessWidget {
  const CounterAppWithGet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: ()=> const HomeScreen()),
        GetPage(name: '/screenOne', page: ()=> const ScreenOne()),
        GetPage(name: '/screenTwo', page: ()=> const ScreenTwo()),

      ],

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
