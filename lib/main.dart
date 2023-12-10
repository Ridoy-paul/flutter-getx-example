import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_state_controller.dart';

void main() => runApp(const MyApp());

/// This is the Getx dependency binder.
class GetDependencyBinder extends Bindings {
  /// Get dependency manager.
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialBinding: GetDependencyBinder(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController = Get.find<CounterStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Get dependency binder"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CounterStateController>(
                assignId: true,
                builder: (controller) {
                  return Text(controller.count.toString(),
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.deepOrange ));
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.incrementCount(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}




