import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_state_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController = Get.put(CounterStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Getx Example"),
        backgroundColor: Colors.indigo,
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
                        fontSize: 50, fontWeight: FontWeight.bold),);
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




