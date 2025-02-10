import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/component.svg") ),

          ],

        ),
    );
  }
}
