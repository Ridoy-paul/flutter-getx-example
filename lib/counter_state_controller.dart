import 'package:get/get.dart';

class CounterStateController extends GetxController {
  int _count = 0;
  /// very Important get method.
  int get count {
    return _count;
  }

  void incrementCount(int value) {
    _count += value;
    update();
  }

}