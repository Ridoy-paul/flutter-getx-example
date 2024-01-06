import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is Screen One!", style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}