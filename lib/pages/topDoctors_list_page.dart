import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/widgets/custom_doctor_widget.dart';
import 'package:medics/pages/doctor_detail_page.dart';

class TopDoctorsListPage extends StatelessWidget {
  const TopDoctorsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Top Doctors",
          style: TextStyle(
              color: Color(0xFF101623),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Color(0xFF101623),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/component.svg")),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const DoctorDetailPage())),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return const CustomDoctorWidget();
              },
              separatorBuilder: (BuildContext context, int i) {
                return const SizedBox(height: 16);
              },
              itemCount: 12),
        ),
      ),
    );
  }
}
