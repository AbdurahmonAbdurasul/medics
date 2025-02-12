import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFFSearch extends StatelessWidget {
  final Color borderColor;
  final Color fillColor;
  final Color hintColor;
  final String hintText;

  const CustomTextFFSearch(
      {super.key,
      this.borderColor = const Color(0xFFE8F3F1),
      this.fillColor = const Color(0xFFFBFBFB),
      this.hintColor = const Color(0xFFADADAD),
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(width: 2, color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 1, color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 1, color: Colors.red),
        ),
        prefixIcon: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              width: 18,
              height: 18,
            )),
        hintStyle: TextStyle(
            color: hintColor, fontSize: 12, fontWeight: FontWeight.w400),
        hintText: hintText,
      ),
    );
  }
}
