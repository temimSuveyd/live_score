import 'package:get/get.dart';
import 'package:live_score/core/class/crud/get.dart';



class Appbindinges extends Bindings {
  @override
  void dependencies() {
Get.put(GetData());
  }
  
}