import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'third_screen.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("Second Screen"),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const ThirdScreen());
                  }, child: const Text("Third Screen")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                Get.offAll(const HomeScreen());
              }, child: const Text("Go To Home")),
            ],
          ),
        ),
      ),
    );
  }
}
