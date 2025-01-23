import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/functions/app_dialogs.dart';
import 'package:medics/pages/login_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/widgets/custom_textff_password.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

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
              CustomTextFFPassword(
                formKey: _formKey,
                isCorrect: isPasswordCorrect,
                assetName: "assets/icons/password.svg",
                hintText: "New password",
                seePassword: seePassword,
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
                suffixIcon: "assets/icons/eye_slash.svg",
              ),
              const SizedBox(height: 16),
              CustomTextFFPassword(
                formKey: _formKey,
                isCorrect: isPasswordCorrect,
                assetName: "assets/icons/password.svg",
                hintText: "Confirm password",
                seePassword: seePassword,
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
                suffixIcon: "assets/icons/eye_slash.svg",
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
