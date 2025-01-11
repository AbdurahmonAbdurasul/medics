import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/functions/app_dialogs.dart';
import 'package:medics/pages/login_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';

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
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: const TextStyle(
                    color: Color(0xFFA1A8B0),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF9FAFB),
                  prefixIcon: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/icons/user.svg",
                        width: 24,
                        height: 24,
                        color: isNameValidate
                            ? const Color(0xFF199A8E)
                            : const Color(0xFFA1A8B0)),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Color(0xFFE5E7EB), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(color: Color(0xFFE5E7EB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                ),
                controller: _nameController,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your name";
                  } else if (value.length < 3) {
                    return "Enter correct name";
                  }
                },
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101623)),
                onChanged: (value) {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      isNameValidate = true;
                    });
                    _formKey.currentState!.save();
                  } else {
                    setState(() {
                      isNameValidate = false;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF9FAFB),
                    prefixIcon: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "assets/icons/sms.svg",
                        width: 24,
                        height: 24,
                        color: isEmailValidate
                            ? const Color(0xFF199A8E)
                            : const Color(0xFFA1A8B0),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB), width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB), width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                    ),
                    suffixIcon: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: isEmailValidate
                            ? SvgPicture.asset(
                                "assets/icons/check.svg",
                                width: 16,
                                height: 16,
                              )
                            : const SizedBox())),
                controller: _emailContoller,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your email";
                  } else if (!value.contains("@")) {
                    return "Enter correct email";
                  }
                },
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101623)),
                onChanged: (value) {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      isEmailValidate = true;
                    });
                    _formKey.currentState!.save();
                  } else {
                    setState(() {
                      isEmailValidate = false;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: seePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF9FAFB),
                    prefixIcon: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "assets/icons/password.svg",
                        width: 24,
                        height: 24,
                        color: isPasswordValidate
                            ? const Color(0xFF199A8E)
                            : const Color(0xFFA1A8B0),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB), width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB), width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          seePassword = !seePassword;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/icons/eye_slash.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    )),
                controller: _passwordController,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter your password";
                  } else if (value.length <= 6) {
                    return "Enter at least 6 symbols";
                  }
                },
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101623)),
                onChanged: (value) {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      isPasswordValidate = true;
                    });
                    _formKey.currentState!.save();
                  } else {
                    isPasswordValidate = false;
                  }
                },
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      splashRadius: 0,
                      side: const BorderSide(
                          width: 1.5, color: Color(0xFFD3D6DA)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      value: isChecked,
                      activeColor: Colors.white,
                      checkColor: const Color(0xFF199A8E),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
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
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Have an account? ",
                        style: TextStyle(
                            color: Color(0xFF717784),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Login",
                        style: TextStyle(
                            color: Color(0xFF199A8E),
                            fontSize: 15,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
