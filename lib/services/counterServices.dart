
import 'package:flutter/foundation.dart';

class CounterServices {
  int counter = 0;

  valueIncrement(){
    counter++;
    if (kDebugMode) {
    print(counter);  
    }
  }
}