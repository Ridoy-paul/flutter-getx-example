import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Getx Route", style: TextStyle(color: Colors.white),),
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
                  Get.to(const ScreenOne());
                },
                child: const Text("Go To Screen One"),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: const Text("Go To Page 1"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

