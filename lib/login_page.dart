import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
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
                    SvgPicture.asset("assets/icons/sms.svg",
                        width: 24, height: 24),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
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
                    color: const Color(0xFFE5E7EB),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/password.svg",
                        width: 24, height: 24),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
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
                        obscureText: true,
                        style: const TextStyle(
                            color: Color(0xFF101623),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/eye_slash.svg",
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
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
              Container(
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
