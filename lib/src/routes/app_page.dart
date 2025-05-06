import 'package:get/get.dart';
import 'package:learnova/src/feature/binding/login_binding.dart';
import 'package:learnova/src/feature/login/presentation/view/login_view.dart';
import 'package:learnova/src/routes/app_routes.dart';

class AppPage {

  static final pages = [
    GetPage(name: AppRoutes.login, page: ()=> LoginView(), binding: LoginBinding())
  ];
}