import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFFEmail extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  bool isCorrect;
  final FormFieldValidator<String>? validator;
  final String assetName;
  final String hintText;
  final String? suffixIcon;
  final TextInputType? textType;
  CustomTextFFEmail({
    super.key,
    required this.formKey,
    required this.isCorrect,
    this.validator,
    required this.assetName,
    required this.hintText,
    this.suffixIcon,
    this.textType
  });

  @override
  State<CustomTextFFEmail> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFFEmail> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      textInputAction: TextInputAction.next,
      keyboardType:widget.textType,
      validator: widget.validator,
      onChanged: (value) {
        if (widget.formKey.currentState!.validate()) {
          setState(() {
            widget.isCorrect = true;
          });
        } else {
          setState(() {
            widget.isCorrect = false;
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
            widget.assetName,
            width: 24,
            height: 24,
            color: widget.isCorrect
                ? const Color(0xFF199A8E)
                : const Color(0xFFA1A8B0),
          ),
        ),
        hintText: widget.hintText,
        //"Enter your email",
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
        suffixIcon: widget.isCorrect && widget.suffixIcon!.isNotEmpty
            ? Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  widget.suffixIcon!,
                  //"assets/icons/check.svg",
                  width: 16,
                  height: 16,
                ),
              )
            : const SizedBox(),
      ),
      style: const TextStyle(
        color: Color(0xFF101623),
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
