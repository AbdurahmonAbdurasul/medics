import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInWithWidgets extends StatelessWidget {
  final String assetName;
  final String title;
  const SignInWithWidgets({
    super.key,
    required this.assetName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            assetName,
            height: 20,
            width: 19.58,
          ),
          const SizedBox(width: 76),
           Text(
            title,
            style:const TextStyle(
              color: Color(0xFF101623),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
