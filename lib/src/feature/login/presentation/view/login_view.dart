import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnova/src/feature/login/presentation/provider/login_controller.dart';
import 'package:learnova/src/feature/login/presentation/widget/custom_tap.dart';
import 'package:learnova/src/feature/login/presentation/widget/change_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<LoginController>(
        builder: (controller) {
          return Column(
            children: [
              CustomTapWidget(),
              const SizedBox(height: 16),
              Text(
                "Log In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => controller.changePage(0),
                    child: ChangeButton(
                      text: 'Student',
                      color: controller.selected == 0
                          ? Color(0xff023F86)
                          : Color(0xff727477),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () => controller.changePage(1),
                    child: ChangeButton(
                      text: 'Teacher',
                      color: controller.selected == 1
                          ? Color(0xff023F86)
                          : Color(0xff727477),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: size.height * .35,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.changePage(value);
                  },
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: controller.togglePasswordVisibility, 
                                  icon: Icon(controller.showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,),
                                )
                              ),
                              obscureText: controller.showPassword,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.35,
                      decoration: BoxDecoration(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
