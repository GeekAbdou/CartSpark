import 'package:get/get.dart';
import 'package:sparkcart/core/view_model/auth_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }
}
