import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/appointment_page.dart';
import 'package:medics/pages/chat_page.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/widgets/custom_doctor_widget.dart';

class DoctorDetailPage extends StatefulWidget {
  const DoctorDetailPage({super.key});

  @override
  State<DoctorDetailPage> createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text("Doctor Detail",style: TextStyle(color: Color(0xFF101623),fontSize: 16,fontWeight: FontWeight.w600),),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon:const Icon(Icons.chevron_left,size: 30,color: Color(0xFF101623),)),
          actions: [
            IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/component.svg"),),
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDoctorWidget(showBorder: false,),
            const SizedBox(height: 30),
            const Text("About",style: TextStyle(color: Color(0xFF101623),fontSize: 16,fontWeight: FontWeight.w600),),
            const SizedBox(height: 10),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.2Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.2Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.2Ut enim ad minim veniam",
             style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF717784)),
            overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            InkWell(
              onTap: (){},
              child: const Text("Read more",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF199A8E),),),),
            const SizedBox(height: 30),

            const SizedBox(height: 30),
            const Divider(thickness: 1,color: Color(0xFFE8F3F1),),
            const SizedBox(height: 30),
            Container(
              width:104,
              height:38,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color:const Color(0xFFB3D3CE)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text("10:00 AM",style: TextStyle(color: Color(0xFF101623),fontSize: 12,fontWeight: FontWeight.w400),),
            ),
            const SizedBox(height: 65,),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ChatPage())),
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:const Color(0xFFE8F3F1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset("assets/icons/chat.svg"),
                  ),
                ),
                const SizedBox(width: 20,),
                CustomButtonWidget(
                    title: "Book Appointment", onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AppointmentPage()))),
            ],),



          ],
        ),
      ),
    );
  }
}
