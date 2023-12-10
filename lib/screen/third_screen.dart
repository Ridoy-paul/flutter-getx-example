import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("Third Screen"),
              ElevatedButton(onPressed: () {}, child: const Text("Go To Second Screen")),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: const Text("Go To Home")),
            ],
          ),
        ),
      ),
    );
  }
}
