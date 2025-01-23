import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/functions/app_dialogs.dart';
import 'package:medics/pages/login_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/widgets/custom_textff_email.dart';
import 'package:medics/widgets/custom_textff_password.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailContoller = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  bool isNameValidate = false;
  bool isEmailValidate = false;
  bool isPasswordValidate = false;
  bool seePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF101623)),
        ),
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
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
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CustomTextFFEmail(
                formKey: _formKey,
                isCorrect: isNameValidate,
                assetName: "assets/icons/user.svg",
                hintText: "Enter your name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your name";
                  } else if (value.length < 3) {
                    return "Enter correct name";
                  } else {
                    setState(() {
                      isNameValidate = true;
                    });
                  }
                },
                suffixIcon: "",
                textType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFFEmail(
                formKey: _formKey,
                isCorrect: isEmailValidate,
                assetName: "assets/icons/sms.svg",
                hintText: "Enter your email",
                suffixIcon: "assets/icons/check.svg",
                textType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your email";
                  } else if (!value.contains("@")) {
                    return "Enter correct email";
                  } else {
                    setState(() {
                      isEmailValidate = true;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              CustomTextFFPassword(
                formKey: _formKey,
                isCorrect: isPasswordValidate,
                assetName: "assets/icons/password.svg",
                hintText: "Enter your password",
                seePassword: seePassword,
                suffixIcon: "assets/icons/eye_slash.svg",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your password";
                  } else if (value.length <= 6) {
                    return "Enter at least 6 symbols";
                  } else {
                    setState(() {
                      isPasswordValidate = true;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                            width: 1.5, color: const Color(0xFFD3D6DA)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: isChecked
                          ? SvgPicture.asset("assets/icons/check.svg",
                              width: 16, height: 16)
                          : const SizedBox(),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the medidoc ",
                              style: TextStyle(
                                color: Color(0xFF3B4453),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                              text: "Terms of Service ",
                              style: TextStyle(
                                color: Color(0xFF199A8E),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                              text: "and ",
                              style: TextStyle(
                                color: Color(0xFF3B4453),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                color: Color(0xFF199A8E),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                CustomButtonWidget(
                    title: "Sign Up",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        AppDialogs.showSuccesDialog(
                            context,
                            "Succes",
                            "Your account has been succesfully registered",
                            "Login",
                            () => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (ctx) => const LoginPage())));
                      }
                    }),
              ]),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account? ",
                    style: TextStyle(
                        color: Color(0xFF717784),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFF199A8E),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
