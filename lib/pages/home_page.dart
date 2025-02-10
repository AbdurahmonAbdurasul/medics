import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/topDoctors_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                    children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              const Text("Find your desire \nhealt solution",style: TextStyle(color: Color(0xFF101623),fontSize: 22,fontWeight:FontWeight.w600),),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg"),iconSize: 24,)
            ],),
                    const  SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor:const Color(0xFFFBFBFB),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(width: 1,color: Color(0xFFE8F3F1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(width: 2, color: Color(0xFFE8F3F1)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(width: 1, color: Color(0xFFE8F3F1)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(width: 1, color: Colors.black),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(width: 1, color: Colors.red),
                ),
                prefixIcon: Container(width: 20,height: 20,alignment: Alignment.center,
                    child: SvgPicture.asset("assets/icons/search.svg",width: 18,height: 18,)),
                hintStyle:const TextStyle(color: Color(0xFFADADAD),fontSize: 12,fontWeight: FontWeight.w400),
                hintText: "Search doctor, drugs, articles...",

              ),
            ),
            const  SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle,
                    color:const Color(0xFFFFFFFF)
                  )  ,
              child: SvgPicture.asset("assets/icons/doctor.svg",width: 32,height: 32,),),
                  const SizedBox(height: 8,),
                  const Text("Doctor",style: TextStyle(color: Color(0xFFA1A8B0),fontWeight: FontWeight.w400,fontSize: 14),),
                ],
              )),
                Expanded(child: Column(
                  children: [
                    Container(
                      width: 64,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                          color:const Color(0xFFFFFFFF)
                      )  ,
                      child: SvgPicture.asset("assets/icons/pharmacy.svg",width: 32,height: 32,),),
                    const SizedBox(height: 8,),
                    const Text("Pharmacy",style: TextStyle(color: Color(0xFFA1A8B0),fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                )),

                Expanded(child: Column(
                  children: [
                    Container(
                      width: 64,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                          color:const Color(0xFFFFFFFF)
                      )  ,
                      child: SvgPicture.asset("assets/icons/hospital.svg",width: 32,height: 32,),),
                    const SizedBox(height: 8,),
                    const Text("Hospital",style: TextStyle(color: Color(0xFFA1A8B0),fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                )),

                Expanded(child: Column(
                  children: [
                    Container(
                      width: 64,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                          color:const Color(0xFFFFFFFF)
                      )  ,
                      child: SvgPicture.asset("assets/icons/ambulance.svg",width: 32,height: 32,),),
                    const SizedBox(height: 8,),
                    const Text("Ambulance",style: TextStyle(color: Color(0xFFA1A8B0),fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                )),

            ],
            ),
            const  SizedBox(height: 16),
            Stack(
              children: [
                SvgPicture.asset("assets/icons/rectangle.svg"),
                Positioned(
                    bottom: 0,
                    right: 5,
                    child: SvgPicture.asset("assets/icons/ellipse.svg")),

                Positioned(
                    right: 10,
                    top: 5,
                    child: Image.asset("assets/images/xm.png")),
                Positioned(
                  left: 26,
                  bottom: 20,
                  child: SizedBox(
                    width: 100,
                    height: 30,
                    child: CupertinoButton(
                    color: const Color(0xFF199A8E) ,
                    borderRadius: BorderRadius.circular(20),
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    onPressed: (){},
                    child:const Text(
                      "Learn more",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF) ,
                      ),
                    ),
                  ),
                  ),
                ),
                const Positioned(
                  left: 26,
                    top: 21,
                    child:  Text("Early protection for\nyour family health",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF101623),),)),



              ],
            ),
            const  SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text("Top Doctor",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF101623)),),
                 InkWell(
                   onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TopDoctorsListPage())) ,
                   child:const Text(

                     "See all",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF199A8E))),
                 ),
              ],),
                      const  SizedBox(height: 16),
                       SizedBox(
                         height: 172,
                        child: ListView.separated(
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(width: 15);
                            },


                          scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index){
                          return Container(
                            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                            width: 118,
                            height: 172,
                            decoration: BoxDecoration(
                              color:const Color(0xFFFFFFFF),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color:const Color(0xFFE8F3F1),width: 1,)

                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                child:   CircleAvatar(
                                    radius:35,
                                    backgroundImage:AssetImage("assets/images/cedric.png"),),
                              ),
                              const  SizedBox(height: 18,),
                                const Text("Dr. Marcus Horiz",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFF555555)),),
                                const Text("Cardiologist",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w500,color: Color(0xFFADADAD)),),
                                const  SizedBox(height: 10,),
                                Row(

                                  children: [
                                    Stack(

                                      children: [
                                        SvgPicture.asset("assets/icons/star_rectangle.svg"),
                                        Positioned(

                                            child: SvgPicture.asset("assets/icons/star.svg"),
                                        top: 2,
                                        left: 2,),
                                        Positioned(
                                          top:1.5,
                                            right:2,
                                            child: const Text("4,7",style: TextStyle(color: Color(0xFF199A8E),fontSize: 8,fontWeight: FontWeight.w500),)

                                        )
                                      ],
                                    ),const  SizedBox(width: 8,),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/icons/location.svg"),
                                       const Text("800m away",style: TextStyle(color: Color(0xFFADADAD),fontSize: 8,fontWeight: FontWeight.w500),)
                                      ],
                                    )
                                  ],
                                )


                              ],
                            ),
                          );
                        }
                        ),

                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Health Article",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF101623)),),
                          Text("See all",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF199A8E)),),
                        ],),




                    ],
                  ),
          )),
    );
  }
}
