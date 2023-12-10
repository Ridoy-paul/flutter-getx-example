import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CounterStateController {
  RxInt _count = 0.obs;

  /// very Inportant get method.
  RxInt get count {
    return _count;
  }

  void incrementCount(int value) {
    _count += value;
  }

}