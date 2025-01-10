import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/login_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/logo/logom.svg",
                  width: 96,
                  height: 98.52,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Let's get started!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101623),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Login to enjoy the features we've \nprovided, and stay healthy!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF717784),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButtonWidget(
                    title: "Go to home",
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>const LoginPage()));
                    },
                  ),
                  const SizedBox(height: 12),
                  CustomButtonWidget(
                    title: "Sign Up",
                    color: Colors.white,
                    textColor: const Color(0xFF199A8E),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
