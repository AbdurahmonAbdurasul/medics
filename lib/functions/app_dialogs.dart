import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/widgets/custom_button_widget.dart';

class AppDialogs {
  static showSuccesDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            backgroundColor: Colors.white,
            insetPadding: const EdgeInsets.symmetric(horizontal: 24),
            icon: SvgPicture.asset(
              "assets/icons/done.svg",
              width: 102,
              height: 102,
            ),
            title: const Text(
              "Yeay! Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFF101623),
              ),
            ),
            content: const Text(
              "Once again you login successfully \ninto medidoc app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFFA1A8B0),
              ),
            ),
            actionsAlignment: MainAxisAlignment.center,
            alignment: Alignment.center,
            actions: [
              CustomButtonWidget(
                title: "Go to home",
                onTap: () {},
              )
              // Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).pushReplacement(
              //         MaterialPageRoute(
              //           builder: (context) => const Onbording(),
              //         ),
              //       );
              //     },
              //     child: Container(
              //       alignment: Alignment.center,
              //       width: 183,
              //       height: 56,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(32),
              //         color: const Color(0xFF199A8E),
              //       ),
              //       child: const Text(
              //         "Go to home",
              //         style: TextStyle(
              //           color: Color(0xFFFFFFFF),
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        );
      });
}
