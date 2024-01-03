import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Get Light & Dark Theme"),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          GetBuilder<ThemeController>(builder: (controller) {
            return IconButton(onPressed: () {
              controller.toggleTheme();
            }, icon: controller.isDarkMode ? const Icon(Icons.light_mode) : const Icon(Icons.nightlight_outlined),);
          }),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                themeController.isDarkMode ? "Dark Mode" : "Light Mode",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

