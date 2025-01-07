import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/onbording.dart';

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
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
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
                "Once again you login successfully \n                into medidoc app",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFA1A8B0),
                ),
              ),
              actions: [
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Onbording(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 183,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: const Color(0xFF199A8E),
                      ),
                      child: const Text(
                        "Go to home",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Colors.transparent,
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
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 24, right: 24),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFFF9FAFB),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/sms.svg",
                      width: 24,
                      height: 24,
                      color: isEmailCorrect
                          ? const Color(0xFF199A8E)
                          : const Color(0xFFA1A8B0),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
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
                          if (_key.currentState!.validate()) {
                            setState(() {
                              isEmailCorrect = true;
                            });
                          } else {
                            setState(() {
                              isEmailCorrect = false;
                            });
                          }
                        },
                        decoration: const InputDecoration(
                          hintText: "Enter your email",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
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
                    ),
                    isEmailCorrect
                        ? SvgPicture.asset(
                            "assets/icons/check.svg",
                            width: 16,
                            height: 16,
                          )
                        : const SizedBox()
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 24, right: 24),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFFF9FAFB),
                  border: Border.all(
                    color: isPassword
                        ? const Color(0xFFE5E7EB)
                        : const Color(0xFFFF5C5C),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/password.svg",
                        width: 24,
                        height: 24,
                        color: isPasswordCorrect
                            ? const Color(0xFF199A8E)
                            : const Color(0xFFA1A8B0)),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Enter your password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xFFA1A8B0),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please,enter password";
                          } else if (value.length <= 7) {
                            return "Enter at least 8 symbols";
                          } else {
                            setState(() {
                              isPasswordCorrect = true;
                            });
                          }
                        },
                        onChanged: (value) {
                          if (_key.currentState!.validate()) {
                            setState(() {
                              isPasswordCorrect = true;
                            });
                          } else {
                            isPasswordCorrect = false;
                          }
                        },
                        obscureText: seePassword,
                        style: const TextStyle(
                            color: Color(0xFF101623),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          seePassword = !seePassword;
                        });
                      },
                      child: SvgPicture.asset(
                        "assets/icons/eye_slash.svg",
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: isPassword
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                children: [
                  isPassword
                      ? const SizedBox()
                      : const Text(
                          "*The password you entered is wrong",
                          style: TextStyle(
                            color: Color(0xFFFF5C5C),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color(0xFF199A8E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              InkWell(
                onTap: () {
                  submit();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color(0xFF199A8E),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
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
                    onTap: () {},
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
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/google.svg",
                      height: 20,
                      width: 19.58,
                    ),
                    const SizedBox(width: 76),
                    const Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: Color(0xFF101623),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/apple.svg",
                      height: 20,
                      width: 16.84,
                    ),
                    const SizedBox(width: 86),
                    const Text(
                      "Sign in with Apple",
                      style: TextStyle(
                        color: Color(0xFF101623),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(width: 66),
                    const Text(
                      "Sign in with Facebook",
                      style: TextStyle(
                        color: Color(0xFF101623),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
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
}
