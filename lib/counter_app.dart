import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'counter_state_controller.dart';
import 'main.dart';

class CounterAppWithGet extends StatelessWidget {
  const CounterAppWithGet({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialBinding: GetDependencyBinder(),
    );
  }
}

/// This is the Get dependency binder.
class GetDependencyBinder extends Bindings {
  /// Get dependency manager.
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }

}
