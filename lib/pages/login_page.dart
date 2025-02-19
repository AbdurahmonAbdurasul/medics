import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/forgot_password_page.dart';
import 'package:medics/pages/onbording.dart';
import 'package:medics/pages/sign_up_page.dart';

import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/widgets/custom_textff_email.dart';
import 'package:medics/widgets/custom_textff_password.dart';
import 'package:medics/widgets/sign_in_with_widgets.dart';
import '../functions/app_dialogs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isEmailCorrect = false;
  String password = "12345678";
  bool seePassword = false;
  bool isPassword = true;
  bool isPasswordCorrect = false;
  ValueNotifier<bool> hidePassword = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: const Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xFF101623),
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset(
            "assets/icons/arrow-left.svg",
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFFEmail(
                formKey: _key,
                assetName: "assets/icons/sms.svg",
                isCorrect: isEmailCorrect,
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
              ),

              const SizedBox(height: 16),
              SizedBox(
                height: 95,
                child: Stack(
                  children: [
                    CustomTextFFPassword(
                      formKey: _key,
                      isCorrect: isPasswordCorrect,
                      assetName: "assets/icons/password.svg",
                      hintText: "Enter your password",
                      seePassword: seePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please,enter password";
                        } else if (value.length <= 7) {
                          return "Enter at least 8 symbols";
                        } else {
                          setState(() {
                            isPasswordCorrect = true;
                          });
                          return "";
                        }
                      },
                      suffixIcon: "assets/icons/eye_slash.svg",
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: TextButton(
                          style: ButtonStyle(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage()));
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xFF199A8E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              //const SizedBox(height: 18),
              // Row(
              //   mainAxisAlignment: isPassword
              //       ? MainAxisAlignment.end
              //       : MainAxisAlignment.spaceBetween,
              //   children: [
              //     isPassword
              //         ? const SizedBox()
              //         : const Text(
              //             "*The password you entered is wrong",
              //             style: TextStyle(
              //               color: Color(0xFFFF5C5C),
              //               fontSize: 11,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //   ],
              // ),
              const SizedBox(height: 32),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                CustomButtonWidget(
                  title: "Login",
                  onTap: () {
                    submit();
                  },
                ),
              ]),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF717784),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF199A8E),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFE5E7EB),
                      thickness: 1,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 31,
                    width: 53,
                    child: const Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA1A8B0),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFE5E7EB),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const SignInWithWidgets(
                assetName: "assets/icons/google.svg",
                title: "Sign in with Google",
              ),
              const SizedBox(height: 16),
              const SignInWithWidgets(
                assetName: "assets/icons/apple.svg",
                title: "Sign in with Apple",
              ),
              const SizedBox(height: 16),
              const SignInWithWidgets(
                assetName: "assets/icons/facebook.svg",
                title: "Sign in with Facebook",
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 36,
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  "assets/icons/home_in.svg",
                  width: 134,
                  height: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
    }
    if (password != _passwordController.text) {
      setState(() {
        isPassword = false;
      });
    } else {
      setState(() {
        isPassword = true;
      });
      AppDialogs.showSuccesDialog(
        context,
        "Yeay! Welcome Back",
        "Once again you login successfully \ninto medidoc app",
        "Go to home",
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const Onbording())),
      );
    }
  }
}
