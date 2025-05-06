import 'package:get/get.dart';
import 'package:learnova/src/feature/login/presentation/provider/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(()=> LoginController());
  }


}