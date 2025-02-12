import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomCategoryItem extends StatelessWidget {
  final Function() function;
  final String icon;
  final String title;
  final int flex;
  const CustomCategoryItem({super.key,required this.function,required this.icon,required this.title,this.flex=1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:flex ,
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap:function,
              child: Container(
                width: 64,
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFFFFFFF)),
                child: SvgPicture.asset(
                  icon,
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
             Text(
               title,
              style:const TextStyle(
                  color: Color(0xFFA1A8B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
          ],
        ));
  }
}
