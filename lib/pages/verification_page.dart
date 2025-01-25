import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/new_password.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
              "Enter Verification Code",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Enter code that we have sent to your number ",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: "08528188*** ",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            ])),
            const SizedBox(height: 32),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              submittedPinTheme: PinTheme(
                  width: 64,
                  height: 64,
                  textStyle: const TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFF199A8E)),
                      borderRadius: BorderRadius.circular(16))),
            ),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButtonWidget(
                    title: "Verify",
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewPassword()))),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t receive the code?",
                  style: TextStyle(
                      color: Color(0xFF717784),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VerificationPage(),
                    ),
                  ),
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                        color: Color(0xFF199A8E),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
