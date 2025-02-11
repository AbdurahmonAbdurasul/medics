import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  final String assetPath;
  final String title;
  const CustomPageView({
    super.key,
    required this.assetPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Expanded(flex: 3, child: Image.asset(assetPath)),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(right: 16, left: 17, top: 50),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  gradient: LinearGradient(colors: [
                    Color(0xFFF5F7FF),
                    Color(0xFFFFFFFF),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF101623)),
                ),
              )),
        ],
      ),
    ]);
  }
}
