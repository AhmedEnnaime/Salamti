import 'package:get/get.dart';

import 'Data/controller.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}