import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/widgets/custom_button_widget.dart';

class AppDialogs {
  static showSuccesDialog(BuildContext context, String title, String subtitle,
          String buttonText, Function() function) =>
      showDialog(
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
              title: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF101623),
                ),
              ),
              content: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFA1A8B0),
                ),
              ),
              actionsAlignment: MainAxisAlignment.center,
              alignment: Alignment.center,
              actions: [
                SizedBox(
                  width: 190,
                  child: CustomButtonWidget(
                    title: buttonText,
                    onTap: function,
                  ),
                )
              ],
            ),
          );
        },
      );
}
