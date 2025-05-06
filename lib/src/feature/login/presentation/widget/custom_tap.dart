import 'package:flutter/material.dart';

class CustomTapWidget extends StatelessWidget {
  const CustomTapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height* 0.27,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff0C4B94), Color(0xff023F86)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo/logo.png',
            width: 113,
          ),
          Text(
            'Learnova',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
