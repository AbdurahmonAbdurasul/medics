import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/login_page.dart';

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
                  "Login to enjoy the features we've \n       provided, and stay healthy!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF717784),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                SizedBox(
                  width: 260,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF199A8E),
                    ),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage())),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 260,
                  height: 56,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFF199A8E),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF199A8E)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
