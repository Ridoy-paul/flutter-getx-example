import 'package:flutter/material.dart';
import 'light_and_dark_theme_app.dart';
import 'package:get_storage/get_storage.dart';


void main()  async{
  await GetStorage.init();
  runApp(const CounterAppWithGet());
}