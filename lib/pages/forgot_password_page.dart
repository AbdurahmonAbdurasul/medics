import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/arrow-left.svg",
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              "Forgot Your Password?",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter your email or your phone number, we will send you confirmation code",
              style: TextStyle(
                  color: Color(0xFFA1A8B0),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 24),
            // Container(
            //   child: const TabBar(
            //     tabs: [
            //       Text("Email"),
            //       Text("Phone"),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: TabBarView(
            //     children: [
            //       Text("Email"),
            //       Text("Phone"),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
