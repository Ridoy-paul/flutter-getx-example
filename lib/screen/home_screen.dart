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
        title: const Text("Flutter Dialog Popup", style: TextStyle(color: Colors.white),),
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
                  Get.defaultDialog(
                    title: "Delete",
                    contentPadding: const EdgeInsets.all(10),
                    middleText: "Are you want to delete?",
                    textConfirm: "Yes",
                    textCancel: "No",
                    onConfirm: () {
                      print("Confirm Clicked");
                    }
                  );
                },
                child: const Text("Click to open Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

