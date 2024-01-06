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
        title: const Text("Flutter BottomSheet", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        children: [
                          Text("This is the bottomSheet")
                        ],
                      ),
                    ),
                  );
                },
                child: const Text("Click to open BottomSheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

