import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/verification_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/widgets/custom_textff_email.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  bool isEmailCorrect = false;
  bool isPhoneNumberCorrect = false;

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
      body: Form(
        key: _formKey,
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Padding(
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
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      border:
                          Border.all(width: 1, color: const Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(30)),
                  child: TabBar(
                    dividerHeight: 0,
                    unselectedLabelStyle: const TextStyle(
                        color: Color(0xFFA1A8B0),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    labelStyle: const TextStyle(
                        color: Color(0xFF199A8E),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Text("Email"),
                      Text("Phone"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 112,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 24),
                          CustomTextFFEmail(
                            formKey: _formKey,
                            isCorrect: isEmailCorrect,
                            assetName: "assets/icons/sms.svg",
                            hintText: "Enter your email",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please,enter your email";
                              } else if (!value.contains("@")) {
                                return "Please,enter correct email";
                              } else {
                                setState(() {
                                  isEmailCorrect = true;
                                });
                                return null;
                              }
                            },
                            suffixIcon: "assets/icons/check.svg",
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 24),
                          CustomTextFFEmail(
                            formKey: _formKey,
                            isCorrect: isPhoneNumberCorrect,
                            assetName: "assets/icons/call.svg",
                            hintText: "Enter your phone number",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please,enter your phone number";
                              } else if (value.length < 9) {
                                return "Please,enter correct email";
                              } else {
                                setState(() {
                                  isPhoneNumberCorrect = true;
                                });
                              }
                            },
                            textType: TextInputType.number,
                            suffixIcon: "assets/icons/check.svg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButtonWidget(
                        title: "Reset Password",
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerificationPage()))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
