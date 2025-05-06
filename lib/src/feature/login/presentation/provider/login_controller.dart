import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var selected = 0;
  PageController pageController = PageController();

  void changePage(int index) {
    selected = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut
    );
    update();
  }

  //password 
  var showPassword = true;

  void togglePasswordVisibility(){
    showPassword = !showPassword;
    update();
  }

}
