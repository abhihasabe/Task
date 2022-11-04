import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  final Color color;

  const SplashWidget({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/logo.png',
            color: color,
            width: 55,
          ),
        ),
        const SizedBox(height: 19),
        Text(
          'NEWS',
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 19,
            fontWeight: FontWeight.w800,
            fontSize: 25,
            color: color,
          ),
        ),
      ],
    );
  }
}
