import 'package:flutter/material.dart';
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
