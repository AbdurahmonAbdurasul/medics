import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import 'home_page.dart';


class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int currentIndex=0;
  List<Widget> myPages=[
    const HomePage(),
    Container(color: Colors.amber,),
    Container(color: Colors.teal,),
    Container(color: Colors.black,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(child: myPages[currentIndex]),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:const Color(0xFF199A8E),
        onTap: (index){

          setState(() {
            currentIndex=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg"),label: "menu",),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/sms.svg"),label: "menu",),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/calendar.svg"),label: "menu",),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/user.svg"),label: "menu",),
      ],),
    );
  }
}
