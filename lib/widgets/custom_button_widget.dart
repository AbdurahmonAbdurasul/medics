import 'package:flutter/cupertino.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color color;
  final Color textColor;
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.color = const Color(0xFF199A8E),
    this.textColor = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1,
          color: const Color(0xFF199A8E),
        ),
      ),
      child: CupertinoButton(
        color: color,
        borderRadius: BorderRadius.circular(32),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
