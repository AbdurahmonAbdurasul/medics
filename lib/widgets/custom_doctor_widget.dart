import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDoctorWidget extends StatelessWidget {
  final bool showBorder;
  const CustomDoctorWidget({super.key,this.showBorder=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          shape: BoxShape.rectangle,
          border: showBorder?Border.all(color:const Color(0xFFE8F3F1),width: 1):Border.all(color:const Color(0xFFFFFFFF),width: 1),
          color:const Color(0xFFFFFFFF)
      ),
      child: Row(
        children: [

          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/big_cedric.png",width: 110,height: 110,)),

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Dr. Marcus Horizon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF101623)),),
                const SizedBox(height: 4,),
                const Text("Cardiologist",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFFADADAD)),),
                const  SizedBox(height: 14),
                Stack(

                  children: [
                    SvgPicture.asset("assets/icons/star_rectangle.svg",width: 41,height: 18,),
                    Positioned(
                      top: 3,
                      left: 3,
                      child: SvgPicture.asset("assets/icons/star.svg",width: 13,height: 13,),
                    ),
                    const Positioned(
                        top:1,
                        right:3,
                        child:  Text("4,7",style: TextStyle(color: Color(0xFF199A8E),fontSize: 12,fontWeight: FontWeight.w500),)

                    )
                  ],
                ),
                const  SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg",width: 13,height: 13,),
                    const SizedBox(width: 4,),
                    const Text("800m away",style: TextStyle(color: Color(0xFFADADAD),fontSize: 12,fontWeight: FontWeight.w500),)
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
