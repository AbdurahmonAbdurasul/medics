import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFFPassword extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  bool isCorrect;
  final FormFieldValidator<String>? validator;
  final String assetName;
  final String hintText;
  final String? suffixIcon;
  bool seePassword;
  CustomTextFFPassword(
      {super.key,
      required this.formKey,
      required this.isCorrect,
      this.validator,
      required this.assetName,
      required this.hintText,
      this.suffixIcon,
      required this.seePassword});

  @override
  State<CustomTextFFPassword> createState() => _CustomTextFFPasswordState();
}

class _CustomTextFFPasswordState extends State<CustomTextFFPassword> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        prefixIcon: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            widget.assetName,
            width: 24,
            height: 24,
            color: widget.isCorrect
                ? const Color(0xFF199A8E)
                : const Color(0xFFA1A8B0),
          ),
        ),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 2, color: Color(0xFFE5E7EB)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
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
                widget.seePassword = !widget.seePassword;
              });
            },
            icon: SvgPicture.asset(
              widget.suffixIcon!,
              width: 24,
              height: 24,
            )),
      ),
      validator: widget.validator,
      onChanged: (value) {
        if (widget.formKey.currentState!.validate()) {
          setState(() {
            widget.isCorrect = true;
          });
        } else {
          widget.isCorrect = false;
        }
      },
      obscureText: widget.seePassword,
      style: const TextStyle(
          color: Color(0xFF101623), fontWeight: FontWeight.w500, fontSize: 16),
    );
  }
}
