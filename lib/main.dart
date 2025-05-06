import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnova/src/routes/app_page.dart';
import 'package:learnova/src/routes/app_routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.workSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: AppRoutes.login,
      getPages: AppPage.pages,
    );
  }
}