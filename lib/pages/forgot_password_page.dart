import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/verification_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
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
                          TextFormField(
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
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
                            onChanged: (value) {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  isEmailCorrect = true;
                                });
                              } else {
                                setState(() {
                                  isEmailCorrect = false;
                                });
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF9FAFB),
                              prefixIcon: Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  "assets/icons/sms.svg",
                                  width: 24,
                                  height: 24,
                                  color: isEmailCorrect
                                      ? const Color(0xFF199A8E)
                                      : const Color(0xFFA1A8B0),
                                ),
                              ),
                              hintText: "Enter your email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFE5E7EB)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 2, color: Color(0xFFE5E7EB)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFE5E7EB)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.red),
                              ),
                              hintStyle: const TextStyle(
                                color: Color(0xFFA1A8B0),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              suffixIcon: isEmailCorrect
                                  ? Container(
                                      width: 30,
                                      height: 30,
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        "assets/icons/check.svg",
                                        width: 16,
                                        height: 16,
                                      ),
                                    )
                                  : const SizedBox(),
                            ),
                            style: const TextStyle(
                                color: Color(0xFF101623),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 24),
                          TextFormField(
                            controller: _phoneNumberController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please,enter your phone number";
                              } else if (value.length < 9) {
                                return "Please,enter correct email";
                              }
                            },
                            onChanged: (value) {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  isEmailCorrect = true;
                                });
                              } else {
                                setState(() {
                                  isEmailCorrect = false;
                                });
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF9FAFB),
                              prefixIcon: Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  "assets/icons/call.svg",
                                  width: 24,
                                  height: 24,
                                  color: isEmailCorrect
                                      ? const Color(0xFF199A8E)
                                      : const Color(0xFFA1A8B0),
                                ),
                              ),
                              hintText: "Enter your phone number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFE5E7EB)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 2, color: Color(0xFFE5E7EB)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFE5E7EB)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.red),
                              ),
                              hintStyle: const TextStyle(
                                color: Color(0xFFA1A8B0),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            style: const TextStyle(
                                color: Color(0xFF101623),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
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
