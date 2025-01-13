import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/functions/app_dialogs.dart';
import 'package:medics/pages/login_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';

class NewPassword extends StatefulWidget {
  NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  bool isPasswordCorrect = false;

  bool seePassword = false;
  bool seeConPassword = false;

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const Text(
                "Create New Password",
                style: TextStyle(
                    color: Color(0xFF101623),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              const Text("Create your new password to login",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 24),
              TextFormField(
                controller: _passwordController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
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
                      color: isPasswordCorrect
                          ? const Color(0xFF199A8E)
                          : const Color(0xFFA1A8B0),
                    ),
                  ),
                  hintText: "New password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFE5E7EB)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                  ),
                  hintStyle: const TextStyle(
                    color: Color(0xFFA1A8B0),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        seePassword = !seePassword;
                      });
                    },
                    icon: Icon(seePassword
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter new password";
                  } else if (value.length <= 7) {
                    return "Enter at least 8 symbols";
                  } else {
                    setState(() {
                      isPasswordCorrect = true;
                    });
                  }
                },
                onChanged: (value) {
                  if (_formKey.currentState!.validate()) {
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
              const SizedBox(height: 16),
              TextFormField(
                controller: _confirmPassController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
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
                      color: isPasswordCorrect
                          ? const Color(0xFF199A8E)
                          : const Color(0xFFA1A8B0),
                    ),
                  ),
                  hintText: "Confirm password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFE5E7EB)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                  ),
                  hintStyle: const TextStyle(
                    color: Color(0xFFA1A8B0),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        seeConPassword = !seeConPassword;
                      });
                    },
                    icon: Icon(seePassword
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please,enter new password";
                  } else if (value.length <= 7) {
                    return "Enter at least 8 symbols";
                  } else {
                    setState(() {
                      isPasswordCorrect = true;
                    });
                  }
                },
                onChanged: (value) {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      isPasswordCorrect = true;
                    });
                  } else {
                    isPasswordCorrect = false;
                  }
                },
                obscureText: seeConPassword,
                style: const TextStyle(
                    color: Color(0xFF101623),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButtonWidget(
                      title: "Create Password",
                      onTap: () => AppDialogs.showSuccesDialog(
                          context,
                          "Success",
                          "You have successfully reset your password.",
                          "Login",
                          () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
