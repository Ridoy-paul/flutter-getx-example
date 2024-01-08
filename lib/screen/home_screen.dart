import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Locale? currentLocale = Get.locale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Get Localization",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black54,
        actions: [
          TextButton(
            onPressed: () {

              Get.updateLocale(const Locale('bn', 'BD'));
            },
            child: const Text(
              "বাংলা",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.updateLocale(const Locale('en', 'US'));
            },
            child: const Text(
              "EN",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ListTile(
                  title: Text('title'.tr, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  subtitle: Text('about'.tr, textAlign: TextAlign.justify,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
